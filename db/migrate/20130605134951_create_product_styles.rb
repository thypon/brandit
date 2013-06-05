class CreateProductStyles < ActiveRecord::Migration
  def change
    create_table :product_styles do |t|
      t.string :name

      t.timestamps
    end
  end
end
