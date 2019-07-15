class Language < ApplicationRecord
  has_many :courses
  has_many :new
  has_many :faq_categories
  has_many :template_modules
end
