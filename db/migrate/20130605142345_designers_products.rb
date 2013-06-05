class DesignersProducts < ActiveRecord::Migration
  def change
    create_table :designers_products, :id => false do |t|
      t.references :product, :null => false
      t.references :designer, :null => false
    end

    add_index(:designers_products, [:product_id, :designer_id], :unique => true)
  end
end
