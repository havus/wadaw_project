class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string  :name
      t.string  :info
      t.string  :image_url
      t.string  :product_code
      t.integer :batch
      t.integer :stock
      t.decimal :price, precision: 38, scale: 2, default: 0

      t.timestamps
    end
  end
end
