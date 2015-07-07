class RemoveFamilyId < ActiveRecord::Migration
  def change
    remove_column :photos, :family_id, :integer, null: false
  end
end
