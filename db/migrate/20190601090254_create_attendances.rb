class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.string :presence
      t.text :description
      t.boolean :excused

      t.timestamps
    end
  end
end
