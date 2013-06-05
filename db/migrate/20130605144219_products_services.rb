class ProductsServices < ActiveRecord::Migration
  def change
    create_table :products_services, :id => false do |t|
      t.references :product, :null => false
      t.references :service, :null => false
    end

    add_index(:products_services, [:product_id, :service_id], :unique => true)
  end
end
