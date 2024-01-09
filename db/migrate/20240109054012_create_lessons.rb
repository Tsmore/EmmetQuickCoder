class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :description
      t.integer :difficulty
      t.integer :level

      t.timestamps
    end
  end
end
