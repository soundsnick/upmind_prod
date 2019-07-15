class DeleteFaqLanguage < ActiveRecord::Migration[5.2]
  def change
    remove_column :faqs, :language_id
  end
end
