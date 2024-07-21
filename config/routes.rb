Rails.application.routes.draw do
  resources :employees
  resources :bills, only: [:new, :create, :index]
  resources :departments
  root 'employees#index'
end
