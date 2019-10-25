class CreateMiltipleAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :miltiple_answers do |t|
      t.integer :miltiple_question_id
      t.text :answer
      t.boolean :correct
    end
  end
end
