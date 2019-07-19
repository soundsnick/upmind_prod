class ContentMini < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :content_mini, :text
    add_column :lessons, :task, :text
  end
end
