class AddDominantColorToNews < ActiveRecord::Migration[5.2]
  def change
    add_column :news, :new_dominant_color, :string
  end
end
