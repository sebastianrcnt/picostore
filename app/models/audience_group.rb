class AudienceGroup < ApplicationRecord
    has_many :audience_group_to_membership_subscriptions
    has_many :membership_subscriptions, through: :audience_group_to_membership_subscriptions
end
