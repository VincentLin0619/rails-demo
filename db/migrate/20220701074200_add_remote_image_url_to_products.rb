class AddRemoteImageUrlToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :remote_image_url, :string
    add_column :products, :categories, :integer
  end
end
