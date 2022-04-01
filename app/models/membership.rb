class Membership < ApplicationRecord
  has_one_attached :cover_image
  has_one_attached :thumbnail_image

  belongs_to :default_tier, foreign_key: "default_tier_id", class_name: "MembershipTier"
  belongs_to :store, foreign_key: "store_id", class_name: "Store"

  has_many :membership_promotion_codes, foreign_key: "membership_id", class_name: "MembershipPromotionCode", inverse_of: :membership
  has_many :membership_subscriptions, foreign_key: "membership_id", class_name: "MembershipSubscription", inverse_of: :membership

end
