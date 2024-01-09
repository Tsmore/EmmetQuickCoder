class UserProgress < ApplicationRecord

  # 紐づけ
  belongs_to :user
  belongs_to :lesson

  # バリデーション
  validates :status, inclusion: { in: 0..2 } # 0:未着手, 1:進行中, 2:完了

  enum status: { not_started: 0, in_progress: 1, completed: 2 }

end
