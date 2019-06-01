class CreateClassTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :class_templates do |t|
      t.string :name
      t.date :year
      t.integer :semester
      t.boolean :archived

      t.timestamps
    end
  end
end
