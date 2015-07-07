class AddRoleDefaultValue < ActiveRecord::Migration
  def up
    remove_column :users, :role, :integer, null: false
    add_column :users, :role_id, :integer, null: false, default: 1
  end

  def down
    change_column :users, :role, :integer, null: false
  end
end
