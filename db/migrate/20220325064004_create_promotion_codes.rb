class CreatePromotionCodes < ActiveRecord::Migration[6.1]
  def change
    create_table :promotion_codes do |t|
      t.integer :product_id
      t.string :code
      t.integer :quantity
      t.integer :used_quantity
      t.integer :discount_type
      t.float :discount_rate
      t.integer :discount_price

      t.timestamps
    end
  end
end
