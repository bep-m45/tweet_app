class PostComment < ApplicationRecord
  belong_to :user_params
  belong_to :post
end
