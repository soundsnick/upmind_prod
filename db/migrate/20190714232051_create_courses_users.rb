class CreateCoursesUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :courses_users do |t|
      t.integer :user_id
      t.integer :course_id
    end
  end
end
