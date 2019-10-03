class UserSerializer < ActiveModel::Serializer
    attributes :name, :id, :username, :credibility
    has_many :comments
    has_many :posts
  end