class CreateTemplateModules < ActiveRecord::Migration[5.2]
  def change
    create_table :template_modules do |t|
      t.string :title
      t.integer :language_id
    end
    remove_column :templates, :module
    add_column :templates, :template_module_id, :integer
  end
end
