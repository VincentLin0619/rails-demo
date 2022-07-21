class ProductAttachment < ApplicationRecord
  mount_uploader :image, ProductAttachmentUploader
  belongs_to :product
end
