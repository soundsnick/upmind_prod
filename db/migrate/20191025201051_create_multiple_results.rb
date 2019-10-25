class CreateMultipleResults < ActiveRecord::Migration[5.2]
  def change
    create_table :multiple_results do |t|
      t.integer :multiple_id
      t.integer :user_id
      t.float :result
      t.timestamps
    end
  end
end
