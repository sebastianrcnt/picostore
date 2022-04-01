class MembershipSubscription < ApplicationRecord
    belongs_to :membership, foreign_key: "membership_id", class_name: "Membership", inverse_of: :membership_subscriptions
    belongs_to :membership_tier, foreign_key: "membership_tier_id", class_name: "MembershipTier"
    belongs_to :membership_promotion_code, foreign_key: "membership_promotion_code_id", class_name: "MembershipPromotionCode"
    belongs_to :subscriber, foreign_key: "subscriber_id", class_name: "User", inverse_of: :membership_subscriptions
    has_many :audience_group_to_membership_subscriptions
    has_many :audience_groups, through: :audience_group_to_membership_subscriptions
    has_many :membership_subscription_payments
end
