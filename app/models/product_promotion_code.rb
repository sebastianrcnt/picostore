class ProductPromotionCode < ApplicationRecord
    belongs_to :product
    has_many :product_orders
end
