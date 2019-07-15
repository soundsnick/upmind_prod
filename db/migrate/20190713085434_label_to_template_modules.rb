class LabelToTemplateModules < ActiveRecord::Migration[5.2]
  def change
    add_column :template_modules, :label, :string
    remove_column :templates, :value
    add_column :templates, :title, :text
  end
end
