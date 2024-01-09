class Lesson < ApplicationRecord

  # 紐づけ
  has_many :lesson_pages, dependent: :destroy
  has_many :user_progresses, dependent: :destroy

  # バリデーション
  validates :title, presence: true
  validates :difficulty, inclusion: { in: 0..2 } # 0:初級, 1:中級, 2:上級
  validates :level, inclusion: { in: 1..5 } # レベルは１〜５の予定

  # 難易度のenum
  enum difficulty: { beginner: 0, intermediate: 1, advanced: 2 }

end
