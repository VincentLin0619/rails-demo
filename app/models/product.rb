class Product < ApplicationRecord
  validates :name, presence: true
  validates :sku, presence: true
  validates :price, presence: true
end
