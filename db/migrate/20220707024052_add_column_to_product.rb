class AddColumnToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :images, :string
    remove_column :products, :cover
  end
end
