class Response < ApplicationRecord
  # アソシエーション
  belongs_to :user
  belongs_to :comment
  
  # バリデーション
  validates :user_id,     presence: true
  validates :comment_id,  presence: true
  validates :content,     presence: true, length: {maximum: 200}
  validates :is_deleted,  presence: true
end
