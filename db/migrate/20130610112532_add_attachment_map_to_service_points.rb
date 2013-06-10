class AddAttachmentMapToServicePoints < ActiveRecord::Migration
  def self.up
    change_table :service_points do |t|
      t.attachment :map
    end
  end

  def self.down
    drop_attached_file :service_points, :map
  end
end
