class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized

  def index
    @users = User.all
    render json: @users
  end

  # def show
  #   @user = User.find(params[:id])
  #   # @already_following = Follow.find_by(follower_id: current_user.id, followed_id: @user.id)
  #   # @follow = Follow.new
  #   render json: @users
  # end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: { user: UserSerializer.new(@user) }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  # def follow
  #   @user = User.find(params[:id])
  #   @followers = @user.followers
  #   @followeds = @user.followeds
  # end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
