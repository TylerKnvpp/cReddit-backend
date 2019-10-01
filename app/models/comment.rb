class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  # def created_at
  #   super().strftime('%m/%d/%Y')
  # end
end
