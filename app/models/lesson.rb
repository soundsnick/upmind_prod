class Lesson < ApplicationRecord
  belongs_to :course
  has_many :comments
  has_many :hometasks
  mount_uploader :video, LessonUploader
  mount_uploader :materials, MaterialsUploader
  has_many :student_questions
  has_many :feedbacks
end
