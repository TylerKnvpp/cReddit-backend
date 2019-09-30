class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def created_at
    super().strftime('%b %d %Y')
  end
end
