class CreateEmmetSnippets < ActiveRecord::Migration[6.1]
  def change
    create_table :emmet_snippets do |t|
      t.string :abbriviation
      t.text :description
      t.text :example
      t.text :converted_html

      t.timestamps
    end
  end
end
