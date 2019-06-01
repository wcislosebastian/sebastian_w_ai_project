class FixNotesColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :notes, :valid, :note_valid
  end
end
