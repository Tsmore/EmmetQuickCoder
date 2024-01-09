class CreateLessonPages < ActiveRecord::Migration[6.1]
  def change
    create_table :lesson_pages do |t|
      t.references :lesson
      t.text :content
      t.integer :page_number

      t.timestamps
    end
  end
end
