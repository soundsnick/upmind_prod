class AddLocaleToFaqAndCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :locale, :string
    add_column :news, :locale, :string
    add_column :faq_categories, :locale, :string
    add_column :faqs, :locale, :string
  end
end
