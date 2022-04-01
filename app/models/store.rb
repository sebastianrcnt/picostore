class Store < ApplicationRecord
  has_one_attached :cover_image

  belongs_to :owner, foreign_key: "owner_id", class_name: "User", inverse_of: :stores
  has_many :memberships, foreign_key: "store_id", inverse_of: :store, class_name: "Membership"
  has_many :products
end
