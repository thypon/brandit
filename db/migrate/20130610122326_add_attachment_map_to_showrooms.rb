class AddAttachmentMapToShowrooms < ActiveRecord::Migration
  def self.up
    change_table :showrooms do |t|
      t.attachment :map
    end
  end

  def self.down
    drop_attached_file :showrooms, :map
  end
end
