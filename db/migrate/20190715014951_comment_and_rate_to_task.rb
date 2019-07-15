class CommentAndRateToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :hometasks, :rate, :integer
    add_column :hometasks, :comment, :text
  end
end
