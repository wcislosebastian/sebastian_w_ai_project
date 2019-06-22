class CreateJoinTables < ActiveRecord::Migration[5.2]
  def change
    create_join_table :real_classes, :students
    create_join_table :students, :parents
    create_join_table :teachers, :real_classes
    create_join_table :teachers, :subjects
    create_join_table :subjects, :class_templates
    add_reference :real_classes, :class_template, foreign_key: true
  end
end
