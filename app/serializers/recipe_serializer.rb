class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :ingredients, :recipeName, :imageUrlsBySize, :totalTimeInSeconds, :rating
  # has_many :recipe_ingredients
  # has_many :ingredients, through: :recipe_ingredients
end
