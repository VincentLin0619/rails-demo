class DropProductImgs < ActiveRecord::Migration[6.1]
  def change
    drop_table :product_imgs
  end
end
