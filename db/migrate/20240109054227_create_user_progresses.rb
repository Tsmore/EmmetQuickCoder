class CreateUserProgresses < ActiveRecord::Migration[6.1]
  def change
    create_table :user_progresses do |t|
      t.references :user
      t.references :lesson
      t.integer :status

      t.timestamps
    end
  end
end
