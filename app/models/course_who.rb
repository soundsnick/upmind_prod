class CourseWho < ApplicationRecord
  mount_uploader :icon, IconUploaderUploader
  belongs_to :course
end
