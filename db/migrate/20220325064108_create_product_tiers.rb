class CreateProductTiers < ActiveRecord::Migration[6.1]
  def change
    create_table :product_tiers do |t|
      t.string :name
      t.integer :product_id
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
