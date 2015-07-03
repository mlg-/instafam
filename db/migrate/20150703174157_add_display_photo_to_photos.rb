class AddDisplayPhotoToPhotos < ActiveRecord::Migration
  def up
    add_attachment :photos, :display_photo
  end

  def down
    remove_attachment :photos, :display_photo
  end
end
