class Api::V1::RecipesController < ApplicationController
  skip_before_action :authorized, only: [:create, :index]

  def index
    @recipe = Recipe.all
    render json: @recipe
  end

  def create
    @recipe = Recipe.create(recipe_params)
    Favorite.create(:recipe_id => @recipe.id, :user_id => current_user.id)
    render json: {recipe: RecipeSerializer.new(@recipe), user: UserSerializer.new(current_user)}
  end

  private
  def recipe_params
    params.require(:recipe).permit(:ingredients, :recipeName, :imageUrlsBySize, :totalTimeInSeconds, :rating)
  end
end
