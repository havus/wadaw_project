# frozen_string_literal: true

require 'rails_helper'

# required let declaration:
# - request_operation

shared_examples :should_return_not_found_status do |model_name|
  it 'should return not_found status' do
    request_operation

    expect(response.status).to eq 404
  end

  it 'should return the correctly structured response body' do
    request_operation

    parsed_body = JSON.parse(response.body)

    expect(parsed_body['error_message']).to eq "#{model_name} not found"
  end
end
