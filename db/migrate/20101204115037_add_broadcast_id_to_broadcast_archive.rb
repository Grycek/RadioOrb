class AddBroadcastIdToBroadcastArchive < ActiveRecord::Migration
  def self.up
    add_column :broadcast_archives, :broadcast_id, :integer
  end

  def self.down
    remove_column :broadcast_archives, :broadcast_id
  end
end
