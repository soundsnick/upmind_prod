class CreateTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :templates do |t|
      t.string :value
      t.string :module
      t.string :label
    end
  end
end
