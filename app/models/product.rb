class Product < ApplicationRecord
  has_one_attached :cover_image
  has_one_attached :thumbnail_image
end
