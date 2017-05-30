class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end


  def show
    @picture = get_picture
  end

  private

  def picture_params
    params.require(:picture).permit(:title, :image_url)
  end

  def get_picture
    Picture.find(params[:id])
  end
end
