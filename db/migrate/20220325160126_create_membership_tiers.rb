class CreateMembershipTiers < ActiveRecord::Migration[6.1]
  def change
    create_table :membership_tiers do |t|
      t.string :name
      t.string :description
      t.integer :payment_period
      t.integer :membership_id
      t.string : 

      t.timestamps
    end
  end
end
