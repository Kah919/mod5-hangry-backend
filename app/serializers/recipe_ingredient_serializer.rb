class UserRecipeSerializer < ActiveModel::Serializer
  attributes :id, :recipe_id, :ingredient_id
  belongs_to :recipe, :ingredient
end
