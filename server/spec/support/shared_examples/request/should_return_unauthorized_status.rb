# frozen_string_literal: true

require 'rails_helper'

# required let declaration:
# - request_operation

shared_examples :should_return_unauthorized_status do
  it 'should return unauthorized status' do
    request_operation

    expect(response.status).to eq 401
  end
end
