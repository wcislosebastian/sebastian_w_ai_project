class CreateRealClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :real_classes do |t|
      t.string :name
      t.date :year
      t.integer :semester
      t.boolean :active
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
