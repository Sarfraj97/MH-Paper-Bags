class Product < ApplicationRecord
  has_many_attached :images
  has_many :user_interests
end
