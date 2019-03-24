class Api::V1::CategoriesController < ApplicationController
  skip_before_action :authorized, only: [:create, :index]

  def index
    @categories = Category.all
    render json: @categories
  end

  def create
    @category = Categories.create(category_params)
    render json: @category
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
