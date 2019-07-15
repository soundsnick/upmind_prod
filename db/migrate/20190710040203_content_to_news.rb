class ContentToNews < ActiveRecord::Migration[5.2]
  def change
    add_column :news, :content, :text
  end
end
