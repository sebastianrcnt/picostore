class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :default_tier_id
      t.boolean :has_sales_limit
      t.integer :sales_limit
      t.boolean :creates_license_key

      t.timestamps
    end
  end
end
