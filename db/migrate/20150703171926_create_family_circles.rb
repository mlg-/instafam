class CreateFamilyCircles < ActiveRecord::Migration
  def change
    create_table :family_circles do |t|
      t.integer :user_id, null: false
      t.integer :family_id, null: false
    end
  end
end
