# frozen_string_literal: true

module API
  module V1
    class ProductsController < BaseController
      before_action :find_resource, only: [:show, :update]
      skip_before_action :verify_authenticity_token, only: [:create, :update]

      def index
        render status: :ok, json: resource_serializer.new(Product.from_newest)
      end

      def show
        render status: :ok, json: resource_serializer.new(@requested_resource)
      end

      def create
        if authorized?
          new_product = Product.new(permitted_params)

          if new_product.save
            render status: :created, json: resource_serializer.new(new_product)
          else
            render status: :unprocessable_entity, json: {
              error_messages: new_product.errors.messages
            }
          end
        else
          render status: :unauthorized, json: { error_messages: 'Unauthorized request' }
        end
      end

      def update
        if authorized?
          valid_params = permitted_params.reject { |value| value.blank? }

          @requested_resource.assign_attributes(valid_params)
          # TODO: add audit comment here
          if @requested_resource.save
            render status: :ok, json: resource_serializer.new(@requested_resource.reload)
          else
            render status: :unprocessable_entity, json: {
              error_messages: @requested_resource.errors.messages
            }
          end
        else
          render status: :unauthorized, json: { error_messages: 'Unauthorized request' }
        end
      end

    private
      def permitted_params
        params.require(:product).permit(
          :name,
          :info,
          :image_url,
          :product_code,
          :batch,
          :stock,
          :price
        )
      rescue ActionController::ParameterMissing
        nil
      end
    end
  end
end
