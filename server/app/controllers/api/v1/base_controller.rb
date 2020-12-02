# frozen_string_literal: true

module API
  module V1
    class BaseController < ApplicationController
      respond_to? :json

      def resource_serializer
        class_name = controller_name.split('/').last.camelize.singularize

        "::V1::#{class_name}Serializer".constantize
      end

      def find_resource
        model_name          = controller_name.singularize.capitalize
        @requested_resource = model_name.constantize.find params[:id]

      rescue ActiveRecord::RecordNotFound
        render status: :not_found, json: { error: "#{model_name} not found" }
      end
    end
  end
end
