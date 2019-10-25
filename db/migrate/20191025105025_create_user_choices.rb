class CreateUserChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :user_choices do |t|
      t.integer :multiple_question_id
      t.integer :multiple_answer_id
      t.integer :user_id
    end
  end
end
