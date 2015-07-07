class PhotosController < ApplicationController 
  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    # binding.pry
    @photo = Photo.new(photo_params)
    if @photo.save
      flash[:notice] = "Your photo has been added!"
      redirect_to photos_path
    else
      flash[:notice] = @photo.errors.full_messages.join(" ")
    end
  end

  private

  def photo_params
    params.require(:photo)
    .permit(:caption,
            :display_photo_file_name,
            :display_photo_content_type,
            :display_photo_file_size,
            :display_photo_updated_at)
    .merge(user_id: current_user.id)
  end
end