class Video < ApplicationRecord
  # アソシエーション
  belongs_to :user
  
  # バリデーション
  validates :user_id, presence: true
  
  VALID_VIDEO_URL = /(\Ahttps:\/\/www\.youtube\.com\/watch\?v=)+[\w]{11}\z/
  validates :video_url, format: { with: VALID_VIDEO_URL }
end
