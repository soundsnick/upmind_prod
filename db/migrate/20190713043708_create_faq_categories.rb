class CreateFaqCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :faq_categories do |t|
      t.string :title
    end
  end
end
