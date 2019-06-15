class Note < ApplicationRecord
  belongs_to :real_class
  belongs_to :teacher
  belongs_to :student
end
