class UserSerializer < ActiveModel::Serializer
    attributes :name, :id, :username
    has_many :comments
    has_many :posts
  end