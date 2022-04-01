class Payment < ApplicationRecord
    has_one :membership_subscription_payment
    has_one :product_order_payment
end
