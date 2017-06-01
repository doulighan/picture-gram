class CommentsController < ApplicationController
  

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = session[:user_id]
    if @comment.save
      flash[:success] = "Comment posted!"
      redirect_to picture_path(@comment.picture_id)
    else
      flash[:warning] = "Comment failed!"
      redirect_to picture_path(@comment.picture_id)
    end
  end

  private 

  def  comment_params
    params.require(:comment).permit(:content, :picture_id)
  end

end