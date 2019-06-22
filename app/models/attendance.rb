class Attendance < ApplicationRecord
  belongs_to :real_class
  belongs_to :student

  def display_name
     presence
  end
end
