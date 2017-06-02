class PicturesController < ApplicationController
  before_action :authenticate, except: :index

  def index
    @pictures = Picture.all
    if params[:search]
      if Tag.find_by(name: params[:search])
        redirect_to tag_path Tag.find_by(name: params[:search])
      else
        flash[:warning] = "Tag not found"
        redirect_to root_path
      end
    end
  end

 
  def show
    @picture = get_picture
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.user_id = session[:user_id]
    tag = Tag.new(name: params["tags"]["name"])
    if !tag.name.blank? 
      @picture.tags << Tag.create(name: params["tags"]["name"])
    end
    if @picture.save
      flash[:success] = "You have created a new picture!"
      redirect_to user_path(current_user)
    else 
      flash[:error] = "Picture not created"
      redirect_to user_path(current_user)
    end
  end

private

  def picture_params
  params.require(:picture).permit( :tag_name, :search, :user_id, :title, :image_url, :tag_ids => [])
  end

  def get_picture
    Picture.find(params[:id])
  end

end
