class CreateProductOrderPayments < ActiveRecord::Migration[6.1]
  def change
    create_table :product_order_payments do |t|
      t.integer :product_order_id
      t.integer :payment_id
      t.datetime :purchase_time

      t.timestamps
    end
  end
end
