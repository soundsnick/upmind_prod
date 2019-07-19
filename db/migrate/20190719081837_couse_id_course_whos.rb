class CouseIdCourseWhos < ActiveRecord::Migration[5.2]
  def change
    add_column :course_whos, :course_id, :integer
    add_column :course_faqs, :course_id, :integer
  end
end
