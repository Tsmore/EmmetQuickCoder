class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # バリデーションコーナー
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :email, presence: true
end
