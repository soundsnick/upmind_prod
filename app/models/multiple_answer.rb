class MultipleAnswer < ApplicationRecord
  belongs_to :multiple_question
  has_many :user_choice
end
