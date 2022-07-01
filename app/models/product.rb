class Product < ApplicationRecord
  mount_uploader :cover, AvatarUploader
end
