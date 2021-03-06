class CreateActivities < ActiveRecord::Migration
  def self.up
    create_table :activities do |t|
      t.string :name
      t.string :description
      t.string :status
      t.datetime :due
      t.integer :owner_id
      t.string :who

      t.timestamps
    end
    add_index :activities, :owner_id
    rename_column(:activities, :owner_id, :user_id)

  end

  def self.down
    drop_table :activities
  end
end
