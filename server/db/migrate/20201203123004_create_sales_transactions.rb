class CreateSalesTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :sales_transactions do |t|
      t.bigint  :product_id, index: true
      t.string  :customer_name
      t.integer :quantity
      t.date    :transaction_at
      t.decimal :total_price, precision: 38, scale: 2, default: 0

      t.timestamps
    end
  end
end
