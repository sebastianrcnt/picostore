class ProductOrder < ApplicationRecord
    belongs_to :orderer, foreign_key: "orderer_id", class_name: "User", inverse_of: :product_orders
    belongs_to :product
    belongs_to :product_promotion_code, optional: true
    belongs_to :product_tier

    has_one :product_order_payment
end
