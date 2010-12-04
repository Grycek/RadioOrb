class AddDateAndDesriptionToBroadcastArchive < ActiveRecord::Migration
  def self.up
    add_column :broadcast_archives, :date, :date
    add_column :broadcast_archives, :description, :text
  end

  def self.down
    remove_column :broadcast_archives, :description
    remove_column :broadcast_archives, :date
  end
end
