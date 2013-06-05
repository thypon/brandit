class ProductsShops < ActiveRecord::Migration
  def change
    create_table :products_shops, :id => false do |t|
      t.references :product, :null => false
      t.references :shop, :null => false
    end

    add_index(:products_shops, [:product_id, :shop_id], :unique => true)
  end
end
