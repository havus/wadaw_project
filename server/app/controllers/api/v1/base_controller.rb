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
        model_name          = controller_name.singularize.camelcase
        @requested_resource = model_name.constantize.find params[:id]

      rescue ActiveRecord::RecordNotFound
        render status: :not_found, json: { error_message: "#{model_name} not found" }
      end

      def authorized?
        bearer_token = request.headers['Authorization']&.gsub('Bearer ', '')
        bearer_token == ENV['TEMP_TOKEN']
      end
    end
  end
end
