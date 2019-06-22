class Student < ApplicationRecord
  has_many :marks
  has_many :attendances
  has_many :notes
  has_and_belongs_to_many :real_classes
  has_many :parents
  has_many :admin_user

  def display_name
     "#{first_name} #{last_name}"
  end
end
