# frozen_string_literal: true

module API
  module V1
    class ProductsController < BaseController
      before_action :find_product, only: :show

      def index
        render status: :ok, json: resource_serializer.new(Product.all)
      end

      def show
        render status: :ok, json: resource_serializer.new(app)
      end

    private
      def find_product
        @product = Product.find(params[:id])

      rescue ActiveRecord::RecordNotFound
        byebug
        render status: :not_found, json: { error: 'Product not found' }
      end
    end
  end
end
