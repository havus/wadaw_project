# frozen_string_literal: true

require 'rails_helper'

# required let declaration:
# - request_operation

shared_examples :should_return_created_status do
  it 'should return created status' do
    request_operation

    expect(response.status).to eq 201
  end
end
