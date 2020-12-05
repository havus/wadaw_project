# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    name          { 'Dummy Product' }
    product_code  { 'DP' }
    stock         { 99 }
    batch         { 1 }
    price         { 150_000 }

    after(:build) do |product, _evaluator|
      product.product_code = product.name.split(' ').map { |val| val.first }.join('')
      product.product_code += "##{rand(1..1000)}"
    end
  end
end
