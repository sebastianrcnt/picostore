class CreateAudienceGroupToMembershipSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :audience_group_to_membership_subscriptions do |t|
      t.integer :audience_group_id
      t.integer :membership_subscription_id

      t.timestamps
    end
  end
end
