class PostsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  before_action :set_post, only: [:show]
  layout "admin"
  def index
    @posts = Post.all
    @posts = @posts.page params[:page]
  end

  def show
    @comments = @post.comments
    @comment = Comment.new
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
