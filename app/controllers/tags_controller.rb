class TagsController < ApplicationController
  before_action :authenticate
  def index 
    @tags = Tag.all
  end

  # def new 

  # end

  # def create
  #   @tag = Tag.new(tag_params)
  #   if @tag.save
  #     flash[:success] = "You have created a new tag"
  #   else
  #     flash[:error] = "No tag created"
  #   end

  # end

  def show
    @tag = find_tag
  end

  private 

  def tag_params
     @tag = params.require(:tag).permit(:name)
  end

  def find_tag
    @tag = Tag.find(params[:id])
  end
end
