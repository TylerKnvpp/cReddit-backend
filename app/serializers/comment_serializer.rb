class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :upvotes, :downvotes, :source, :source_validated, :source_disputed, :is_fact?, :user, :post
end
