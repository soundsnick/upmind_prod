class CreateCourseWhos < ActiveRecord::Migration[5.2]
  def change
    create_table :course_whos do |t|
      t.string :icon
      t.string :title
      t.text :description
    end
    add_column :lessons, :description, :text
  end
end
