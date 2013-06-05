class AddAttachmentPhotoToDesigners < ActiveRecord::Migration
  def self.up
    change_table :designers do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :designers, :photo
  end
end
