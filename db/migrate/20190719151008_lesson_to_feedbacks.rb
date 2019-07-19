class LessonToFeedbacks < ActiveRecord::Migration[5.2]
  def change
    add_column :feedbacks, :lesson_id, :integer
  end
end
