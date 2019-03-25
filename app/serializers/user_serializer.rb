class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :user_ingredients
  has_many :ingredients, through: :user_ingredients
  has_many :favorites
  has_many :recipes, through: :favorites

  # has_many :follows
  #
  # has_many :following_follows, class_name: "Follow", foreign_key: :follower_id
  # has_many :followeds, through: :following_follows, source: :followed
  #
  # has_many :followed_follows, class_name: "Follow", foreign_key: :followed_id
  # has_many :followers, through: :followed_follows, source: :follower
end
