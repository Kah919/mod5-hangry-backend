class Api::V1::FavoritesController < ApplicationController
  skip_before_action :authorized, only: [:create, :index]

  def index
    @favorites = Favorite.all
    render json: @favorites
  end

  def create
    @favorite = Favorites.create(favorite_params)
    render json: @favorite
  end

  private
  def favorite_params
    params.require(:favorite).permit(:user_id, :recipe_id)
  end
end
