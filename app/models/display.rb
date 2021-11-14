class Display < ApplicationRecord
  # アソシエーション
  belongs_to :user
  
  # バリデーション
  validates :streamer_id, presence: true
  validates :denote_add_intro, presence: true
  validates :denote_comment, presence: true
end
