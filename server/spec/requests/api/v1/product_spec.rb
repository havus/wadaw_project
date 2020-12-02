# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :request do
  let_it_be(:first_product) { create(:product, name: 'First Product') }
  let(:model_attribute_keys) do
    %w[
      name
      product_code
      batch
      stock
      price
      created_at
      updated_at
    ]
  end

  describe 'request a list of all product application services' do
    # let(:endpoint_path) { api_v1_products_path }
    # let(:mocked_response) {
    #   ::V1::AppSerializer.new(commonly_scoped).serializable_hash
    # }
    # let(:expected_records_count) { commonly_scoped.count }
  end

  describe 'request a single record of active application service' do
    let(:endpoint_path) { api_v1_product_path(first_product.id) }

    it 'should return ok response' do
      get endpoint_path

      expect(response.status).to eq 200
    end

    it 'should return the correctly structured response body' do
      get endpoint_path

      parsed_body = JSON.parse(response.body)

      # Assert that the body contains only 'data' as the keys
      expect(parsed_body.keys).to eq ['data']
      # Assert that the data key contains an array as value
      expect(parsed_body['data']).to be_kind_of Hash

      # Test the structure of the first record
      record = parsed_body['data']

      expect(record.keys).to include 'attributes'
      expect(record.keys).to include 'id'
      expect(record.keys).to include 'type'

      expect(record['attributes'].keys).to match_array(model_attribute_keys)
    end
  end
end
