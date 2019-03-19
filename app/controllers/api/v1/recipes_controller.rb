class Api::V1::RecipesController < ApplicationController
  def index
    @recipe = Recipe.all
    render json: @recipe
  end

  def create
    @recipe = Recipe.create(recipe_params)
    render json: @recipe
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name)
  end
end
