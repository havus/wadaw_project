# frozen_string_literal: true

module V1
  class SalesTransactionSerializer < ApplicationSerializer
    set_type    :sales_transaction
    set_id      :id
    attributes(
      :product,
      :customer_name,
      :quantity,
      :transaction_at,
      :total_price,
      :created_at,
      :updated_at
    )
  end
end
