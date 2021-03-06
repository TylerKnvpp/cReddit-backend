class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :upvotes, :downvotes, :source, :source_validated, :source_disputed, :is_fact, :user, :post, :created_at
  belongs_to :user 
  belongs_to :post
end
