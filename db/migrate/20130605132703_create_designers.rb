class CreateDesigners < ActiveRecord::Migration
  def change
    create_table :designers do |t|
      t.string :name
      t.text :bio
      t.string :link

      t.timestamps
    end
  end
end
