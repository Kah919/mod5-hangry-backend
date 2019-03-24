class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :img
  # belongs_to :recipe
end
