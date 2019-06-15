class Student < ApplicationRecord
  has_many :marks
  has_many :attendances
  has_many :notes
  has_one :admin_user
end
