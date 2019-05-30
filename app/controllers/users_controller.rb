class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]).present?
  end

  def new
  end

  def create
    @userdbcheck = User.find_by(email: user_params[:email])
    if @userdbcheck == nil
      @user = User.new(user_params)
      @user.save
      redirect_to login_path
    elsif @userdbcheck.nil?
        redirect_to error_url
    else
      flash.now[:danger] = 'Email has already been taken'
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
