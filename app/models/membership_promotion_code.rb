class MembershipPromotionCode < ApplicationRecord
    belongs_to :membership, foreign_key: "membership_id", class_name: "Membership", inverse_of: :membership_promotion_codes
end
