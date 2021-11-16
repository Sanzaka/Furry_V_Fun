class Tag < ApplicationRecord
  # アソシエーション
  has_many :tag_relationships, dependent: :destroy
  has_many :users, through: :tag_relationships
  
  # バリデーション
  validates :name, presence: true, length: {maximum: 12}, uniqueness: true
end
