class UserChoice < ApplicationRecord
  belongs_to :user
  belongs_to :multiple_answer
  belongs_to :multiple_question
end
