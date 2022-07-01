class ChangeNameFromProducts < ActiveRecord::Migration[6.1]
  def change
    rename_column :products, :remote_image_url, :remote_cover_url
  end
end
