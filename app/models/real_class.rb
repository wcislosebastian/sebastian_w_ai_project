class RealClass < ApplicationRecord
  has_many :marks
  has_many :notes
  has_many :attendances
  has_and_belongs_to_many :students
  has_and_belongs_to_many :subjects
  belongs_to :class_template
end
