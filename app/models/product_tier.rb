class ProductTier < ApplicationRecord
  has_many_attached :files

  has_many :product_orders
  belongs_to :product
end
