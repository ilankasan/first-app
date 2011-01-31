class RenameOwnerIdColumn < ActiveRecord::Migration
  def self.up
    rename_column :activities, :owner_id, :user_id
  end

  def self.down
  end
end
