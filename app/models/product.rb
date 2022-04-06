class Product < ApplicationRecord
  has_one_attached :cover_image
  has_one_attached :thumbnail_image

  has_many :product_orders
  has_many :product_promotion_codes
  has_many :product_tiers

  belongs_to :default_tier, foreign_key: "default_tier_id", class_name: "ProductTier", optional: true
  belongs_to :store
end
