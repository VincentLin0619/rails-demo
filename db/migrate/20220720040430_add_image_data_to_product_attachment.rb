class AddImageDataToProductAttachment < ActiveRecord::Migration[6.1]
  def change
    add_column :product_attachments, :image_data, :text
    remove_column :product_attachments, :attachment
  end
end
