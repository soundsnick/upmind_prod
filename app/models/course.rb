class Course < ApplicationRecord
  mount_uploader :image, CourseUploader
  belongs_to :language
  has_many :lessons
  has_and_belongs_to_many :users
end
