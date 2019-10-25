class MultipleQuestion < ApplicationRecord
  belongs_to :multiple
  has_many :multiple_answers
  has_many :user_choice
end
