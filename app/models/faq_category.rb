class FaqCategory < ApplicationRecord
  has_many :faqs
  belongs_to :language
end
