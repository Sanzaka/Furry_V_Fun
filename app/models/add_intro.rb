class AddIntro < ApplicationRecord
  # アソシエーション
  belongs_to :user
  belongs_to :streamer
  has_many :favorites, dependent: :destroy
  
  # バリデーション
  validates :user_id,     presence: true
  validates :streamer_id, presence: true
  validates :content,     length: {maximum: 1000}
  validates :is_markdown, presence: true
end
