class ChangeColunmFromProductAttachment < ActiveRecord::Migration[6.1]
  def change
    rename_column :product_attachments, :image_data, :image
  end
end
