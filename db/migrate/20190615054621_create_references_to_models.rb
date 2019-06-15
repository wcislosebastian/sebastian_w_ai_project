class CreateReferencesToModels < ActiveRecord::Migration[5.2]
  def change
    add_reference :marks, :teacher, foreign_key: true
    add_reference :marks, :student, foreign_key: true
    add_reference :marks, :subject, foreign_key: true
    add_reference :attendances, :real_class, foreign_key: true
    add_reference :attendances, :student, foreign_key: true
    add_reference :notes, :real_class, foreign_key: true
    add_reference :notes, :teacher, foreign_key: true
    add_reference :notes, :student, foreign_key: true
  end
end
