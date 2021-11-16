class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  # アソシエーション
  has_many :comments, dependent: :destroy
  has_many :responses, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :add_intros, dependent: :destroy
  has_many :videos, dependent: :destroy
  has_many :tag_relationships, dependent: :destroy
  has_many :tags, through: :tag_relationships
  
  # バリデーション
  validates :name,       presence: true, length: {maximum: 20}
  validates :email,      presence: true, length: {maximum: 100}
  validates :intro,      length: {maximum: 200}
  validates :is_deleted, presence: true
end
