class CreateMultiples < ActiveRecord::Migration[5.2]
  def change
    create_table :multiples do |t|
      t.integer :lesson_id
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
