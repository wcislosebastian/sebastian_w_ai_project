ActiveAdmin.register Mark do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
belongs_to :student, optional: true do
  belongs_to :real_class, optional: true
end
permit_params :mark, :description, :real_class_id, :teacher_id, :student_id, :subject_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
