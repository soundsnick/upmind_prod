class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :image
      t.text :description
      t.timestamps
    end
  end
end