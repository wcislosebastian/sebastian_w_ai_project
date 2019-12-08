require 'rest-client'
ActiveAdmin.register Attendance do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :presence, :description, :excused, :real_class_id, :student_id

# member_action :email_send do
#   RestClient.get 'http://localhost:3001/submit_email'
# end

# action_item :email_send, only: :index do
#   link_to 'Send email', '#'
# end
# action_item defaults: true do |gift|
#   link_to 'Send Push Notification', email_send_path
# end

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

# controller do
#   def email_send
#     RestClient.get 'http://localhost:3001/submit_email'
#   end
# end

end
