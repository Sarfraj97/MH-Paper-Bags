class Product < ApplicationRecord
  has_many_attached :images
  has_many :orders
  has_many :users, through: :orders
end
