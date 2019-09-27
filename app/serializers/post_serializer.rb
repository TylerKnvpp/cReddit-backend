class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :image_url, :upvotes, :downvotes, :user, :comments
end
