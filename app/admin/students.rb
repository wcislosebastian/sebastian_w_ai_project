ActiveAdmin.register Student do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
belongs_to :real_class, optional: true
permit_params :first_name, :last_name, :address
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  show do
    student
    panel "Students" do
      table_for student.marks do
        column :mark
        column :real_class
      end
    end
  end

end
