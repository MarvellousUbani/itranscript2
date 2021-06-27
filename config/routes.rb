Rails.application.routes.draw do
  root 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  get 'dashboard/edit_users', to: 'pages#admin_edit'
  post 'dashboard/edit_users', to: 'pages#update_user'
  # post 'dashboard/update_user', to: 'pages#update_user'

  devise_for :users, path: '' , path_names: {sign_in:'login', sign_out: 'logout', sign_up: 'register'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :feedbacks

  resources :users


end
