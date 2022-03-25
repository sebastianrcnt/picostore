class CreateMembershipSubscriptionPayments < ActiveRecord::Migration[6.1]
  def change
    create_table :membership_subscription_payments do |t|
      t.integer :membership_subscription_id
      t.integer :payment_id
      t.datetime :purchase_time

      t.timestamps
    end
  end
end
