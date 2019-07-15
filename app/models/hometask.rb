class Hometask < ApplicationRecord
  mount_uploader :file, HometaskUploader
  belongs_to :user
  belongs_to :lesson
end
