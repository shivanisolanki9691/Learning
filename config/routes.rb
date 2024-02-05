Rails.application.routes.draw do
  get 'contacts/index'
  # get 'instructors/index'
  # get 'learnings/index'
  # devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # get 'courses/hadoop'
  # get 'courses/hadoop'
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'learnings#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :registration
  resources :contacts
  resources :recommendations
  resources :instructors
  resources :faqs
  resources :courses
  resources :learnings
  get 'Advantage', to: 'learnings#Advantage',as: 'Advantage'
  get 'terms', to: 'learnings#terms', as: "terms"
  get 'privacy', to: 'learnings#privacy', as: "privacy"
  get 'refund', to: 'learnings#refund', as: "refund"
  get 'jobs', to: 'learnings#jobs', as: 'jobs'
  get 'procast', to: 'learnings#procast', as: 'procast'
end