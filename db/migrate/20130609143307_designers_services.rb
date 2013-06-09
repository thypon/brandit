class DesignersServices < ActiveRecord::Migration
  def change
    create_table :designers_services, :id => false do |t|
      t.references :designer, :null => false
      t.references :service, :null => false
    end

    add_index(:designers_services, [:designer_id, :service_id], :unique => true)
  end
end
