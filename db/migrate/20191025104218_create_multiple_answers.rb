class CreateMultipleAnswers < ActiveRecord::Migration[5.2]
  def change
    drop_table :miltiple_answers
    create_table :multiple_answers do |t|
      t.integer :multiple_question_id
      t.text :answer
      t.boolean :correct
    end
  end
end
