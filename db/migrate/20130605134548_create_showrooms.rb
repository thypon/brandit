class CreateShowrooms < ActiveRecord::Migration
  def change
    create_table :showrooms do |t|
      t.string :address
      t.text :contacts
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
