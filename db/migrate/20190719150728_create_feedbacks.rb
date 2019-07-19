class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.string :first_question
      t.string :second_question
      t.string :third_question
      t.integer :user_id
      t.timestamps
    end
  end
end
