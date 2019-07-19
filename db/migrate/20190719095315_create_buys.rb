class CreateBuys < ActiveRecord::Migration[5.2]
  def change
    create_table :buys do |t|
      t.string :name
      t.string :phone
      t.integer :course_id
      t.timestamps
    end
  end
end
