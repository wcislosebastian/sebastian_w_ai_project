class Parent < ApplicationRecord
  has_many :admin_user
  has_many :students

  def display_name
     "#{first_name} #{last_name}"
  end
end
