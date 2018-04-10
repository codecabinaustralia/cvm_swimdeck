Rails.application.routes.draw do
  resources :tasks
  resources :automations
  resources :checklist_items
  resources :checklists
  resources :sites
  resources :skills
  resources :levels
  resources :students
  resources :roles
  devise_for :users
  get 'static/home'
  root to: "static#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
