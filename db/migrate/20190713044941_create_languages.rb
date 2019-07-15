class CreateLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :languages do |t|
      t.string :title
      t.string :abbr
    end
    remove_column :courses, :locale, :string
    remove_column :news, :locale, :string
    remove_column :faq_categories, :locale, :string
    remove_column :faqs, :locale, :string
    add_column :courses, :language_id, :string
    add_column :news, :language_id, :string
    add_column :faq_categories, :language_id, :string
    add_column :faqs, :language_id, :string
  end
end
