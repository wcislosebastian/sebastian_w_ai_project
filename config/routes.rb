Rails.application.routes.draw do
  resources :notes
  resources :attendances
  resources :marks
  resources :real_classes
  resources :class_templates
  resources :subjects
  resources :parents
  resources :teachers
  resources :students
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
