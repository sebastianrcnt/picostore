class CreateProductOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :product_orders do |t|
      t.integer :product_id
      t.integer :product_tier_id
      t.integer :product_promotion_code_id
      t.integer :quantity
      t.integer :price
      t.integer :orderer_id
      t.string :orderer_email
      t.string :orderer_initial_password

      t.timestamps
    end
  end
end
