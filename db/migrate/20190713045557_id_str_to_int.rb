class IdStrToInt < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :language_id
    remove_column :news, :language_id
    remove_column :faq_categories, :language_id
    remove_column :faqs, :language_id
    add_column :courses, :language_id, :integer
    add_column :news, :language_id, :integer
    add_column :faq_categories, :language_id, :integer
    add_column :faqs, :language_id, :integer
  end
end
