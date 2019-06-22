class Subject < ApplicationRecord
  has_many :marks
  has_many :teachers
  has_many :class_templates
end
