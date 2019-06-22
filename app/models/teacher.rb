class Teacher < ApplicationRecord
  has_many :marks
  has_many :notes
  has_many :real_classes
  has_many :subjects
  has_many :admin_user

  def display_name
     "#{first_name} #{last_name}"
  end
end
