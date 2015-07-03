class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :user_id, null: false
      t.integer :family_id, null: false

      t.timestamps null: false
    end
  end
end
