class ProductTier < ApplicationRecord
  has_many_attached :files

  belongs_to :product, foreign_key: "product_id", class_name: "Product"
end
