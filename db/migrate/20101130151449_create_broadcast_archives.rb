class CreateBroadcastArchives < ActiveRecord::Migration
  def self.up
    create_table :broadcast_archives do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :broadcast_archives
  end
end
