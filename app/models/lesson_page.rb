class LessonPage < ApplicationRecord

  # 紐づけ
  belongs_to :lesson
  
  # バリデーション
  validates :content, presence: true
  validates :page_number, numericality: { only_integer: true, greater_than: 0 }

end
