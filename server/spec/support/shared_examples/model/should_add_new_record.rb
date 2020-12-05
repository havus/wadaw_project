# frozen_string_literal: true

require 'rails_helper'

# required let declaration:
# - request_operation

shared_examples :should_add_new_record do |model_name, expected_count|
  it "should create new #{model_name} record" do
    expect { request_operation }.to change { model_name.constantize.count }.by(expected_count)
  end
end
