class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.references :product_type
      t.references :product_style

      t.timestamps
    end
    add_index :products, :product_type_id
    add_index :products, :product_style_id
  end
end
