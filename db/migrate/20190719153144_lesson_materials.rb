class LessonMaterials < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :materials, :string
  end
end
