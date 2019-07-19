class CoursesChange < ActiveRecord::Migration[5.2]
  def change
    change_table :courses do |t|
      t.integer :price
      t.string :landing_header_title
      t.text :landing_header_paragraph
      t.string :landing_about_title
      t.text :landing_about_paragraph
      t.string :landing_program_description
    end
  end
end
