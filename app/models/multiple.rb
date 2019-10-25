class Multiple < ApplicationRecord
  belongs_to :lesson
  has_many :multiple_questions
  has_many :multiple_results
end
