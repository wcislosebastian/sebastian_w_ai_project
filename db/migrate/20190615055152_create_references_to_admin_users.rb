class CreateReferencesToAdminUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :admin_users, :teacher, foreign_key: true
    add_reference :admin_users, :parent, foreign_key: true
    add_reference :admin_users, :student, foreign_key: true
  end
end
