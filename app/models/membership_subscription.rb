class MembershipSubscription < ApplicationRecord
    belongs_to :membership
    belongs_to :membership_tier
    belongs_to :membership_promotion_code, optional: true
    belongs_to :subscriber, foreign_key: "subscriber_id", class_name: "User", inverse_of: :membership_subscriptions
    has_many :membership_subscription_payments
end
