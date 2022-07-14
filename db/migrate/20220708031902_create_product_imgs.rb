class CreateProductImgs < ActiveRecord::Migration[6.1]
  def change
    create_table :product_imgs do |t|

      t.timestamps
    end
  end
end
