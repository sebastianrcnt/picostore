class CreateMembershipSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :membership_subscriptions do |t|
      t.integer :membership_id
      t.integer :membership_tier_id
      t.integer :membership_promotion_code_id
      t.datetime :next_purchase_time
      t.string :payment_period
      t.string :integer
      t.integer :price_per_period
      t.boolean :active
      t.integer :subscriber_id
      t.string :subscriber_email
      t.string :subscriber_initial_password

      t.timestamps
    end
  end
end
