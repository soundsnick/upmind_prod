class ChangePrice < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :price
    add_column :courses, :price, :text
  end
end
