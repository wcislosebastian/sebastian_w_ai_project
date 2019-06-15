class Attendance < ApplicationRecord
  belongs_to :real_class
  belongs_to :student
end
