class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find_by(params[:id])
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json:{ status: 'no'}
    end
  end



  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
