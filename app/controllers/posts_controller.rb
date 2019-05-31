class PostsController < ApplicationController

  before_action :require_login

  def new
    @user = User.find(session[:user_id])
  end

  def create
    @user = User.find(session[:user_id])
    post = @user.posts.create(posts_params)
    @post = Post.find(post.id)

    if @post.wall_id == nil
      redirect_to posts_url
    else
      redirect_to user_url(@post.wall_id)
    end
  end

  def edit
    @user = User.find(session[:user_id])
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(edit_params)

    if @post.wall_id == nil
      redirect_to posts_url
    else
      redirect_to user_url(@post.wall_id)
    end
  end

  def index
    @posts = Post.where(:wall_id => nil)
    @user = User.find(session[:user_id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_url
  end

  private

  def edit_params
    params.require(:post).permit(:message)
  end

  def posts_params
    {
      message: params.require(:post).permit(:message)[:message],
      wall_id: params[:user][:id]
    }
  end

  def require_login
    redirect_to root_path unless logged_in?
  end

end
