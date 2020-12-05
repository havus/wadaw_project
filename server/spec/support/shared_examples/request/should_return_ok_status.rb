# frozen_string_literal: true

require 'rails_helper'

# required let declaration:
# - request_operation

shared_examples :should_return_ok_status do
  it 'should return ok status' do
    request_operation

    expect(response.status).to eq 200
  end
end
