class CreateCourseFaqs < ActiveRecord::Migration[5.2]
  def change
    create_table :course_faqs do |t|
      t.string :title
      t.text :answer
    end
  end
end
