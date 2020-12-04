# frozen_string_literal: true

require 'rails_helper'

# required let declaration:
# - request_operation

shared_examples :should_not_change_record_count do |model_name|
  it "should NOT change #{model_name} records count" do
    expect { request_operation }.to_not change { model_name.constantize.count }
  end
end
