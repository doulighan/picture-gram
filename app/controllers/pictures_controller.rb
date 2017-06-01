class PicturesController < ApplicationController
  before_action :authenticate, except: :index

  def index
    @pictures = Picture.all
  end


  def show
    @picture = get_picture
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save

      flash[:success] = "You have created a pshow new picture!"
      redirect_to user_path(current_user)
    else 
      flash[:error] = "Ya done goofed"
      redirect_to user_path(current_user)
    end
  end

private

  def picture_params
  params.require(:picture).permit(:user_id, :title, :image_url, :tag_ids => [])
  end

  def get_picture

    Picture.find(params[:id])
  end

end
