class UsersController < ApplicationController

  before_action :require_login, except: [:new, :create]

  def show
    @user = User.find(params[:id])
    @posts = Post.all
  end

  def new
  end

  def create
    @userdbcheck = User.find_by(email: user_params[:email])
    if @userdbcheck.nil?
      @user = User.new(user_params)
      @user.save
      redirect_to login_path
    else
      flash.now[:danger] = 'Email has already been taken'
      render 'new'
    end
  end

  def index
    @users = User.all
    @user = User.find(session[:user_id])
  end

  private

  def require_login
    redirect_to root_path unless logged_in?
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
