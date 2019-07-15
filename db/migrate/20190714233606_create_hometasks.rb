class CreateHometasks < ActiveRecord::Migration[5.2]
  def change
    create_table :hometasks do |t|
      t.integer :user_id
      t.integer :lesson_id
      t.string :file
      t.timestamps
    end
  end
end
