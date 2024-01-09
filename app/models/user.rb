class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # 紐づけ
  has_many :user_progresses, dependent: :destroy
  has_many :lessons, through: :user_progresses

  # バリデーションコーナー
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  # 初級編のトロフィー獲得判定
  def bronze_trophy_earned_beginner?
    earned_trophy_for_difficulty?(:beginner, 1)
  end
  def silver_trophy_earned_beginner?
    earned_trophy_for_difficulty?(:beginner, 3)
  end
  def gold_trophy_earned_beginner?
    earned_trophy_for_difficulty?(:beginner, 5)
  end
  # 中級編のトロフィー獲得判定
  def bronze_trophy_earned_intermediate?
    earned_trophy_for_difficulty?(:intermediate, 1)
  end
  def silver_trophy_earned_intermediate?
    earned_trophy_for_difficulty?(:intermediate, 3)
  end
  def gold_trophy_earned_intermediate?
    earned_trophy_for_difficulty?(:intermediate, 5)
  end
  # 上級編のトロフィー獲得判定
  def bronze_trophy_earned_advanced?
    earned_trophy_for_difficulty?(:advanced, 1)
  end
  def silver_trophy_earned_advanced?
    earned_trophy_for_difficulty?(:advanced, 3)
  end
  def gold_trophy_earned_advanced?
    earned_trophy_for_difficulty?(:advanced, 5)
  end
  
  private

  def earned_trophy_for_difficulty?(difficulty, threshold)
    lessons.where(difficulty: difficulty, user_progresses: { status: :completed }).count >= threshold
  end

end
