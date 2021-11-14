class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  # アソシエーション
  has_many :comments
  has_many :responses
  has_many :favorites
  has_many :add_intros
  
  # バリデーション
  validates :name,       presence: true, length: {maximum: 20}
  validates :email,      presence: true, length: {maximum: 100}
  validates :intro,      length: {maximum: 200}
  validates :is_deleted, presence: true
end
