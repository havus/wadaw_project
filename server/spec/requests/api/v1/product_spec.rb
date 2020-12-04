# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :request do
  let_it_be(:first_product) { create(:product, name: 'First Product') }
  let_it_be(:second_product) { create(:product, name: 'Second Product') }

  let(:model_attribute_keys) do
    %w[
      name
      image_url
      info
      product_code
      batch
      stock
      price
      created_at
      updated_at
    ]
  end

  describe 'request a list of all products' do
    let(:endpoint_path)           { api_v1_products_path }
    let(:expected_records_count)  { Product.count }
    let(:request_operation)       { get endpoint_path }

    include_examples :should_return_ok_status
    include_examples :response_multiple_record_structure

    it 'should return all data' do
      request_operation

      parsed_body = JSON.parse(response.body)

      expect(parsed_body['data'].count).to eq expected_records_count
    end
  end

  describe 'request a single product' do
    let(:endpoint_path)     { api_v1_product_path(first_product.id) }
    let(:request_operation) { get endpoint_path }

    context 'when record found' do
      include_examples :should_return_ok_status
      include_examples :response_single_record_structure
    end

    context 'when record NOT found' do
      before { Product.destroy_all }

      include_examples :should_return_not_found_status, described_class.name
    end
  end

  describe 'request to create a record' do
    let(:endpoint_path)     { api_v1_products_path }
    let(:request_operation) { post endpoint_path, params: payload_params }
    let(:payload_params) do
      {
        product: {
          name: 'New Product',
          product_code: 'test',
          batch: 1,
          stock: 99
        }
      }
    end

    context 'when all required attributes is filled on params' do
      include_examples :should_return_created_status
      include_examples :response_single_record_structure
      include_examples :should_add_new_record, described_class.name, 1

      it 'should create with correctly attributes' do
        request_operation

        parsed_body     = JSON.parse(response.body)
        record          = parsed_body['data']['attributes']
        expected_params = payload_params[:product]

        expect(record['name']).to         eq expected_params[:name]
        expect(record['product_code']).to eq expected_params[:product_code]
        expect(record['batch']).to        eq expected_params[:batch]
        expect(record['stock']).to        eq expected_params[:stock]
      end
    end

    context 'when post without name' do
      before { payload_params[:product][:name] = nil }

      include_examples :should_return_unprocessable_entity_status

      it 'should return error correctly' do
        request_operation

        parsed_body = JSON.parse(response.body)

        expect(parsed_body['error_messages']['name']).to include "can't be blank"
      end
    end

    context 'when post with blank params' do
      before { payload_params.delete(:product) }

      include_examples :should_return_unprocessable_entity_status

      it 'should return error correctly' do
        request_operation

        parsed_body = JSON.parse(response.body)

        expect(parsed_body['error_messages']['name']).to include "can't be blank"
        expect(parsed_body['error_messages']['product_code']).to include "can't be blank"
        expect(parsed_body['error_messages']['batch']).to include "can't be blank"
        expect(parsed_body['error_messages']['stock']).to include "can't be blank"
      end
    end
  end

  describe 'request to update a record' do
    let(:endpoint_path)     { api_v1_product_path(first_product.id) }
    let(:request_operation) { put endpoint_path, params: payload_params }
    let(:payload_params) do
      {
        product: {
          name: 'New Product'
        }
      }
    end

    context 'when all required attributes is filled on params' do
      include_examples :should_return_ok_status
      include_examples :response_single_record_structure
      include_examples :should_not_change_record_count, described_class.name

      it 'should create with correctly attributes' do
        request_operation

        parsed_body     = JSON.parse(response.body)
        record          = parsed_body['data']['attributes']
        expected_params = payload_params[:product]

        expect(record['name']).to eq expected_params[:name]
      end
    end

    context 'when required attributes is NOT filled on params' do
      before { payload_params[:product][:name] = nil }

      include_examples :should_return_unprocessable_entity_status

      it 'should return error correctly' do
        request_operation

        parsed_body = JSON.parse(response.body)

        expect(parsed_body['error_messages']['name']).to include "can't be blank"
      end
    end
  end
end
