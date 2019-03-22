class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :recipe_id
  belongs_to :user, :recipe
end
