class CreateBelongsToReferenceToMarks < ActiveRecord::Migration[5.2]
  def change
    add_reference :marks, :real_class, foreign_key: true
  end
end
