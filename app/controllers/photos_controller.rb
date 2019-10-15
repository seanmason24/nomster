class PhotosController < ApplicationController
  before_action :authenticate_user!

  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(user: current_user)
    redirect_to place_photos_path(@place)
  end
  
   def show
    @place = Place.find(params[:id])
    @photo = Photo.new
  end

  private

  def photo_params
    params.require(:photo).permit(:caption, :picture)
  end
end
