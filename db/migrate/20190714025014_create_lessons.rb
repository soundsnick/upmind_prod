class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :content
      t.integer :course_id
      t.timestamps
    end
  end
end
