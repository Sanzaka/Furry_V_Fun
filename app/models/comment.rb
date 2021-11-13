class Comment < ApplicationRecord
  # アソシエーション
  belongs_to :user
  
  # バリデーション
  validates :user_id,       presence: true
  validates :post_user_id,  presence: true
  validates :content,       presence: true, length: {maximum: 200}
  validates :is_deleted,    presence: true
end
