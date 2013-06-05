class ProductsShowrooms < ActiveRecord::Migration
  def change
    create_table :products_showrooms, :id => false do |t|
      t.references :product, :null => false
      t.references :showroom, :null => false
    end

    add_index(:products_showrooms, [:product_id, :showroom_id], :unique => true)
  end
end
