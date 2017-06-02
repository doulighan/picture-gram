class TagsController < ApplicationController
  before_action :authenticate
  def index 
    @tags = Tag.all
  end


  def create
    @tag = Tag.new(name: params[:tag][:name])
    if !@tag.name.blank?
      @tag.pictures << Picture.find( params[:tag][:picture_id])
        if @tag.save 
          flash[:success] = "You have created a new tag"
          redirect_to picture_path Picture.find(params[:tag][:picture_id])
        else
          flash[:error] = "No tag created"
          redirect_to picture_path Picture.find(params[:tag][:picture_id])
        end
      end
  end

  def show
    @tag = find_tag
  end

  def search
    byebug
  end

  private 

  def tag_params
     @tag = params.require(:tag).permit(:name, :search, :picture_id)
  end

  def find_tag
    @tag = Tag.find(params[:id])
  end

end
