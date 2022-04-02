class MembershipTier < ApplicationRecord
    has_many_attached :files

    has_many :membership_subscriptions
    belongs_to :membership
end
