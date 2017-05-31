class TagsController < ApplicationController

  def index 

  end

  def new 

  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      flash[:success] = "You have created a new tag"
    else
      flash[:error] = "No tag created"
    end

  end

  def show

  end

  private 

  def tag_params
     @tag = params.require(:tag).permit(:name)
  end
end
