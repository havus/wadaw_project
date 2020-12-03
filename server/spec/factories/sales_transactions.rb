# frozen_string_literal: true

FactoryBot.define do
  factory :sales_transaction do
    association :product

    customer_name   { 'Dummy Person' }
    quantity        { 'DP' }
    transaction_at  { Date.today }
    total_price     { 300_000 }
  end
end
