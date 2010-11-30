class CreateBroadcasts < ActiveRecord::Migration
  def self.up
    create_table :broadcasts do |t|
      t.string :name
      t.text :description
      t.boolean :is_active
      t.integer :day
      t.integer :hour_start
      t.integer :hour_end

      t.timestamps
    end
  end

  def self.down
    drop_table :broadcasts
  end
end
