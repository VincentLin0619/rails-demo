class CreateProductAttachments < ActiveRecord::Migration[6.1]
  def change
    create_table :product_attachments do |t|
      t.references :product, polymorphic: { default: "Product" }
      t.string :attachment
      t.text :description
      t.timestamps
    end
  end
end
