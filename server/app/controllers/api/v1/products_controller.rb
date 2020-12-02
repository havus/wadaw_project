# frozen_string_literal: true

module API
  module V1
    class ProductsController < BaseController
      before_action :find_product, only: [:show, :update]
      skip_before_action :verify_authenticity_token, only: [:create, :update]

      def index
        render status: :ok, json: resource_serializer.new(Product.all)
      end

      def show
        render status: :ok, json: resource_serializer.new(@product)
      end

      def create
        new_product = Product.new(permitted_params)

        if new_product.save
          render status: :ok, json: resource_serializer.new(new_product)
        else
          render status: :unprocessable_entity, json: { error_messages: new_product.errors.messages }
        end
      end

      def update
        valid_params = permitted_params.reject { |value| value.blank? }

        @product.assign_attributes(valid_params)
        # TODO: add audit comment here
        if @product.save
          render status: :ok, json: resource_serializer.new(@product.reload)
        else
          render status: :unprocessable_entity, json: { error_messages: @product.errors.messages }
        end
      end

    private
      def find_product
        @product = Product.find(params[:id])

      rescue ActiveRecord::RecordNotFound
        byebug
        render status: :not_found, json: { error: 'Product not found' }
      end

      def permitted_params
        params.require(:product).permit(:name, :product_code, :batch, :stock, :price)
      end
    end
  end
end
