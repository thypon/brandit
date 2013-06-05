class CreateServicePoints < ActiveRecord::Migration
  def change
    create_table :service_points do |t|
      t.string :address
      t.text :contacts
      t.references :city
      t.references :service

      t.timestamps
    end
    add_index :service_points, :city_id
    add_index :service_points, :service_id
  end
end
