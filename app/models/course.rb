class Course < ApplicationRecord
  mount_uploader :image, CourseUploader
  belongs_to :language
  has_many :lessons
  has_and_belongs_to_many :users
  has_many :course_whos
  has_many :course_faqs
  has_many :programs
end
