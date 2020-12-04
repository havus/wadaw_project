# frozen_string_literal: true

# This model has the following table columns:
# t.string "name"
# t.string "info"
# t.string "image_url"
# t.string "product_code"
# t.integer "batch"
# t.integer "stock"
# t.decimal "price", precision: 38, scale: 2, default: "0.0"
# t.datetime "created_at", precision: 6, null: false
# t.datetime "updated_at", precision: 6, null: false

class Product < ApplicationRecord
  validates_presence_of :name, :product_code, :batch, :stock

  scope :are_batch, -> (batch_number) { where(batch: batch_number) }
end
