class Product < ApplicationRecord
  has_many_attached :images
  has_many :orders, dependent: :destroy
  has_many :users, through: :orders
end
