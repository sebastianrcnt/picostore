class ProductOrderPayment < ApplicationRecord
    belongs_to :product_order
    belongs_to :payment
end
