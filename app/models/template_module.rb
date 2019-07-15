class TemplateModule < ApplicationRecord
  has_many :templates
  belongs_to :language
end
