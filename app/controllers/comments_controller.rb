class CommentsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    @comment.post = @post
    @comment.user = current_user
    if @comment.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end
  def comment_params
    params.require(:comment).permit(:review)
  end
end
