class CreateMarks < ActiveRecord::Migration[5.2]
  def change
    create_table :marks do |t|
      t.string :mark
      t.text :description

      t.timestamps
    end
  end
end
