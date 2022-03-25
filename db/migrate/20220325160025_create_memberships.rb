class CreateMemberships < ActiveRecord::Migration[6.1]
  def change
    create_table :memberships do |t|
      t.string :name
      t.text :description
      t.integer :default_tier_id
      t.boolean :creates_license_key
      t.string :c
      t.integer :store_id

      t.timestamps
    end
  end
end
