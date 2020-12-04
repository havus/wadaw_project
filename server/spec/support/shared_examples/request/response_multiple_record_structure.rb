# frozen_string_literal: true

require 'rails_helper'

# required let declaration:
# - request_operation
# - model_attribute_keys

shared_examples :response_multiple_record_structure do
  it 'should return the correctly structured response body' do
    request_operation

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
