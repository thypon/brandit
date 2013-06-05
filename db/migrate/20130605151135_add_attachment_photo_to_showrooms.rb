class AddAttachmentPhotoToShowrooms < ActiveRecord::Migration
  def self.up
    change_table :showrooms do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :showrooms, :photo
  end
end
