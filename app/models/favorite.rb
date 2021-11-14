class Favorite < ApplicationRecord
  # アソシエーション
  belongs_to :user
  belongs_to :comment
  belongs_to :response
  belongs_to :add_intro
  
  # バリデーション
  validates :user_id,      presence: true
  validates :comment_id,   optional: true
  validates :response_id,  optional: true
  validates :add_intro_id, optional: true
end
