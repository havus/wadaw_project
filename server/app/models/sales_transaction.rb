# frozen_string_literal: true

# This model has the following table columns:
# t.bigint "product_id"
# t.string "customer_name"
# t.integer "quantity"
# t.date "transaction_at"
# t.decimal "total_price", precision: 38, scale: 2, default: "0.0"
# t.datetime "created_at", precision: 6, null: false
# t.datetime "updated_at", precision: 6, null: false

class SalesTransaction < ApplicationRecord
  validates_presence_of :customer_name, :quantity

  belongs_to :product

  scope :sales_in_month, -> (month = Date.today.month, year = Date.today.year) do
    start_date  = Date.parse("#{year}-#{month}-01")
    end_date    = start_date.end_of_month

    where('transaction_at >= ? AND transaction_at <= ?', start_date, end_date)
  end

  def self.total_revenues
    all.map(&:total_price).sum
  end
end
