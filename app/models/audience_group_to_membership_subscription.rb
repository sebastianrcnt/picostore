class AudienceGroupToMembershipSubscription < ApplicationRecord
    belongs_to :audience_group, foreign_key: "audience_group_id", class_name: "AudienceGroup"
    belongs_to :membership_subscription, foreign_key: "membership_subscription_id", class_name: "MembershipSubscription"
end
