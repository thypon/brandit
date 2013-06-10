class AddAttachmentMapToShops < ActiveRecord::Migration
  def self.up
    change_table :shops do |t|
      t.attachment :map
    end
  end

  def self.down
    drop_attached_file :shops, :map
  end
end
