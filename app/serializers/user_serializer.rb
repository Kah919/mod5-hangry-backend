class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :user_ingredients
  has_many :ingredients, through: :user_ingredients
end
