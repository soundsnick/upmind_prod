class NewToImageNews < ActiveRecord::Migration[5.2]
  def change
    remove_column :news, :new_dominant_color
    add_column :news, :image_dominant_color, :string
  end
end
