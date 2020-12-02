# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :request do
  let_it_be(:first_product) { create(:product, name: 'First Product') }
  let_it_be(:second_product) { create(:product, name: 'Second Product') }

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
    let(:endpoint_path) { api_v1_products_path }
    let(:expected_records_count) { Product.count }

    subject { get endpoint_path }

    it 'should return ok response' do
      subject

      expect(response.status).to eq 200
    end

    it 'should return all data' do
      subject

      parsed_body = JSON.parse(response.body)

      expect(parsed_body['data'].count).to eq expected_records_count
    end

    it 'should return the correctly structured response body' do
      subject

      parsed_body = JSON.parse(response.body)

      # Assert that the body contains only 'data' as the keys
      expect(parsed_body.keys).to eq ['data']
      # Assert that the data key contains an array as value
      expect(parsed_body['data']).to be_kind_of Array

      # Test the structure of the first record
      records = parsed_body['data']

      records.each do |record|
        expect(record.keys).to include 'attributes'
        expect(record.keys).to include 'id'
        expect(record.keys).to include 'type'

        expect(record['attributes'].keys).to match_array(model_attribute_keys)
      end
    end
  end

  describe 'request a single record of active application service' do
    let(:endpoint_path) { api_v1_product_path(first_product.id) }

    subject { get endpoint_path }

    context 'when record found' do
      it 'should return ok response' do
        subject

        expect(response.status).to eq 200
      end

      it 'should return the correctly structured response body' do
        subject

        parsed_body = JSON.parse(response.body)

        # Assert that the body contains only 'data' as the keys
        expect(parsed_body.keys).to eq ['data']

        # Test the structure of the first record
        record = parsed_body['data']

        expect(record.keys).to include 'attributes'
        expect(record.keys).to include 'id'
        expect(record.keys).to include 'type'

        expect(record['attributes'].keys).to match_array(model_attribute_keys)
      end
    end

    context 'when record NOT found' do
      before { Product.destroy_all }

      it 'should return not found response' do
        subject

        expect(response.status).to eq 404
      end

      it 'should return the correctly structured response body' do
        subject

        parsed_body = JSON.parse(response.body)

        expect(parsed_body['error_message']).to eq 'Product not found'
      end
    end
  end

  describe 'request to create a record' do
    let(:endpoint_path) { api_v1_products_path }

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

    subject { post endpoint_path, params: payload_params }

    context 'when all required attributes is filled on params' do
      it 'should return ok status' do
        subject

        expect(response.status).to eq 201
      end

      it 'should return the correctly structured response body' do
        subject

        parsed_body = JSON.parse(response.body)

        # Assert that the body contains only 'data' as the keys
        expect(parsed_body.keys).to eq ['data']

        # Test the structure of the first record
        record = parsed_body['data']

        expect(record.keys).to include 'attributes'
        expect(record.keys).to include 'id'
        expect(record.keys).to include 'type'

        expect(record['attributes'].keys).to match_array(model_attribute_keys)
      end

      it 'should create new record' do
        expect { subject }.to change { described_class.count }.by(1)
      end

      it 'should create with correctly attributes' do
        subject

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

      it 'should return unprocessable_entity status' do
        subject

        expect(response.status).to eq 422
      end

      it 'should return error correctly' do
        subject

        parsed_body = JSON.parse(response.body)

        expect(parsed_body['error_messages']['name']).to include "can't be blank"
      end
    end
  end

  describe 'request to update a record' do
    let(:endpoint_path) { api_v1_product_path(first_product.id) }

    let(:payload_params) do
      {
        product: {
          name: 'New Product'
        }
      }
    end

    subject { put endpoint_path, params: payload_params }

    context 'when all required attributes is filled on params' do
      it 'should return ok status' do
        subject

        expect(response.status).to eq 200
      end

      it 'should return the correctly structured response body' do
        subject

        parsed_body = JSON.parse(response.body)

        # Assert that the body contains only 'data' as the keys
        expect(parsed_body.keys).to eq ['data']

        # Test the structure of the first record
        record = parsed_body['data']

        expect(record.keys).to include 'attributes'
        expect(record.keys).to include 'id'
        expect(record.keys).to include 'type'

        expect(record['attributes'].keys).to match_array(model_attribute_keys)
      end

      it 'should NOT create new record' do
        expect { subject }.to_not change { described_class.count }
      end

      it 'should create with correctly attributes' do
        subject

        parsed_body     = JSON.parse(response.body)
        record          = parsed_body['data']['attributes']
        expected_params = payload_params[:product]

        expect(record['name']).to eq expected_params[:name]
      end
    end

    context 'when required attributes is NOT filled on params' do
      before { payload_params[:product][:name] = nil }

      it 'should return unprocessable_entity status' do
        subject

        expect(response.status).to eq 422
      end

      it 'should return error correctly' do
        subject

        parsed_body = JSON.parse(response.body)

        expect(parsed_body['error_messages']['name']).to include "can't be blank"
      end
    end
  end
end
