class Product < ApplicationRecord
  has_one_attached :cover_image
  has_one_attached :thumbnail_image

  has_many :tiers, foreign_key: "product_id", class_name: "ProductTier"
end
