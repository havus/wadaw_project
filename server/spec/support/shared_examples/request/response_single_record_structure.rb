# frozen_string_literal: true

require 'rails_helper'

# required let declaration:
# - request_operation
# - model_attribute_keys

shared_examples :response_single_record_structure do
  it 'should return the correctly structured response body' do
    request_operation

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
