ActiveAdmin.register RealClass do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :name, :year, :semester, :active, :start_date, :end_date, :class_template_id, student_ids: []
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  show do
    panel "Students" do
      table_for real_class.students do
        column :first_name
        column :last_name
        column :marks
        column :attendances
        column :notes
      end
    end
  end

  sidebar "Students", only: [:show, :edit] do
    ul do
      li link_to "Students",    admin_real_class_students_path(resource)
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :year
      f.input :semester
      f.input :active
      f.input :start_date
      f.input :end_date
      f.input :class_template
      f.input :students, :as => :select, :input_html => {:multiple => true}
    end
    f.actions
  end

end
