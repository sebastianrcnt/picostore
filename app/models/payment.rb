class Payment < ApplicationRecord
    has_one :membership_subscription_payment
end
