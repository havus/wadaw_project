# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SalesTransaction, type: :request do
  let_it_be(:first_sales_transaction) { create(:sales_transaction) }
  let_it_be(:second_sales_transaction) { create(:sales_transaction) }

  let(:model_attribute_keys) do
    %w[
      product
      customer_name
      quantity
      transaction_at
      total_price
      created_at
      updated_at
    ]
  end

  describe 'request a list of all sales transactions' do
    let(:endpoint_path)           { api_v1_sales_transactions_path }
    let(:expected_records_count)  { described_class.count }
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
    let(:endpoint_path)     { api_v1_sales_transaction_path(first_sales_transaction.id) }
    let(:request_operation) { get endpoint_path }

    context 'when record found' do
      include_examples :should_return_ok_status
      include_examples :response_single_record_structure
    end

    context 'when record NOT found' do
      before { described_class.destroy_all }

      include_examples :should_return_not_found_status, described_class.name
    end
  end

  describe 'request to create a record' do
    let_it_be(:first_product) { create(:product, name: 'First Product') }

    let(:endpoint_path)     { api_v1_sales_transactions_path }
    let(:request_operation) { post endpoint_path, params: payload_params }
    let(:payload_params) do
      {
        sales_transaction: {
          customer_name: 'New Customer',
          product_id: first_product.id,
          quantity: 1,
          transaction_at: Date.yesterday,
          total_price: 99_000
        }
      }
    end

    context 'when all required attributes is filled on params' do
      include_examples :should_return_created_status
      include_examples :response_single_record_structure
      include_examples :should_add_new_record, described_class.name, 1

      it 'should create with correctly attributes' do
        request_operation

        parsed_body             = JSON.parse(response.body)
        record                  = parsed_body['data']['attributes']
        expected_params         = payload_params[:sales_transaction]
        expected_transaction_at = expected_params[:transaction_at].strftime('%Y-%m-%d')

        expect(record['product']['id']).to    eq first_product.id
        expect(record['customer_name']).to    eq expected_params[:customer_name]
        expect(record['quantity']).to         eq expected_params[:quantity]
        expect(record['total_price'].to_f).to eq expected_params[:total_price].to_f
        expect(record['transaction_at']).to   eq expected_transaction_at
      end
    end

    context 'when post without customer_name' do
      before { payload_params[:sales_transaction][:customer_name] = nil }

      include_examples :should_return_unprocessable_entity_status

      it 'should return error correctly' do
        request_operation

        parsed_body = JSON.parse(response.body)

        expect(parsed_body['error_messages']['customer_name']).to include "can't be blank"
      end
    end

    context 'when post with blank params' do
      before { payload_params.delete(:sales_transaction) }

      include_examples :should_return_unprocessable_entity_status

      it 'should return error correctly' do
        request_operation

        parsed_body = JSON.parse(response.body)

        expect(parsed_body['error_messages']['customer_name']).to include "can't be blank"
        expect(parsed_body['error_messages']['quantity']).to include "can't be blank"
      end
    end
  end

  describe 'request to update a record' do
    let(:endpoint_path)     { api_v1_sales_transaction_path(first_sales_transaction.id) }
    let(:request_operation) { put endpoint_path, params: payload_params }
    let(:payload_params) do
      {
        sales_transaction: {
          customer_name: 'New Customer'
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
        expected_params = payload_params[:sales_transaction]

        expect(record['customer_name']).to eq expected_params[:customer_name]
      end
    end

    context 'when required attributes is NOT filled on params' do
      before { payload_params[:sales_transaction][:customer_name] = nil }

      include_examples :should_return_unprocessable_entity_status

      it 'should return error correctly' do
        request_operation

        parsed_body = JSON.parse(response.body)

        expect(parsed_body['error_messages']['customer_name']).to include "can't be blank"
      end
    end
  end
end
