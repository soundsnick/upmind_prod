class CreateStudentQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :student_questions do |t|
      t.integer :lesson_id
      t.integer :user_id
      t.text :question
      t.timestamps
    end
  end
end
