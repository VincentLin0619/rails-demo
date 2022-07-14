class Product < ApplicationRecord
  has_many :images, :class_name => "ProductImg", :dependent => :destroy

  accepts_nested_attributes_for :attachments, :allow_destroy => true, :reject_if => :all_blank
  validates :name, presence: true
  validates :sku, presence: true
  validates :price, presence: true
end
