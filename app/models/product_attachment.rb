class ProductAttachment < ApplicationRecord
  mount_uploader :attachment, ProductAttachmentUploader
  belongs_to :products
end
