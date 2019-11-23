class Subject < ApplicationRecord
  has_many :marks
  has_many :teachers
  has_many :class_templates
  has_and_belongs_to_many :real_classes
end
