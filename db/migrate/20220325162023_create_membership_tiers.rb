class CreateMembershipTiers < ActiveRecord::Migration[6.1]
  def change
    create_table :membership_tiers do |t|
      t.string :name
      t.string :description
      t.integer :payment_period
      t.integer :membership_id
      t.integer :monthly_price
      t.integer :monthly3_price
      t.integer :monthly6_price
      t.integer :yearly_price

      t.timestamps
    end
  end
end
