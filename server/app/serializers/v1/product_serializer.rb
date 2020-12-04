# frozen_string_literal: true

module V1
  class ProductSerializer < ApplicationSerializer
    set_type    :product
    set_id      :id
    attributes(
      :name,
      :info,
      :image_url,
      :product_code,
      :batch,
      :stock,
      :price,
      :created_at,
      :updated_at
    )
  end
end
