class Admin::PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :show, :destroy]
  layout "admin"

  def index
    @posts = Post.all
    @posts = @posts.page params[:page]
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to admin_posts_path
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to admin_posts_path
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to admin_posts_path
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
