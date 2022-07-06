class Product < ApplicationRecord
  mount_uploader :cover, AvatarUploader
  validates :name, presence: true
  validates :sku, presence: true
  validates :price, presence: true
end
