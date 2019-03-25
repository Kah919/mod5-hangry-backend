class Api::V1::FollowsController < ApplicationController
  skip_before_action :authorized

  def index
    @follow = Follow.all
    render json: @follow
  end

  def create
    @follow = Follow.create(follow_params)
    render json: @follow
  end

  def destroy
  @follow = Follow.find(params[:id])
  @user = @follow.followed
  @follow.destroy
  render json: @follow
end

  private
  def follow_params
    params.require(:follow).permit(:follower_id, :followed_id)
  end
end
