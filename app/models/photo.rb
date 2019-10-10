class Photo < ApplicationRecord
  def show
    @place = Place.find(params[:id])
    @photo = Photo.new
    
  end
end
