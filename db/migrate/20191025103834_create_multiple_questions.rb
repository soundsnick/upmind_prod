class CreateMultipleQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :multiple_questions do |t|
      t.integer :multiple_id
      t.text :question
    end
  end
end
