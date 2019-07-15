class New < ApplicationRecord
  mount_uploader :image, NewUploader
  belongs_to :language
end
