class MembershipSubscriptionPayment < ApplicationRecord
    belongs_to :membership_subscription
    belongs_to :payment
end
