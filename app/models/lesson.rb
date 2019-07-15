class Lesson < ApplicationRecord
  belongs_to :course
  has_many :comments
  has_many :hometasks
  mount_uploader :video, LessonUploader
end
