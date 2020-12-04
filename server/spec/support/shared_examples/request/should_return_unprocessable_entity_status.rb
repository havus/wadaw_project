# frozen_string_literal: true

require 'rails_helper'

# required let declaration:
# - request_operation

shared_examples :should_return_unprocessable_entity_status do
  it 'should return unprocessable_entity status' do
    request_operation

    expect(response.status).to eq 422
  end
end
