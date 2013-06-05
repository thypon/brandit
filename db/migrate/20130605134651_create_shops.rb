class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :address
      t.text :contacts
      t.text :description
      t.references :city

      t.timestamps
    end
    add_index :shops, :city_id
  end
end
