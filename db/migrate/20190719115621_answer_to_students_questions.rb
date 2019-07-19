class AnswerToStudentsQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :student_questions, :answer, :text
  end
end
