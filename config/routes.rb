Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'repos#index'
  resources :repos
  get 'home', to: 'repos#home',as: 'home'
  get 'allcourses', to: 'repos#allcourses', as: 'allcourses'
  get 'services', to: 'repos#services', as: 'services'
  get 'software_training', to: 'repos#software_training', as: "software_training"
  get 'Software_trainers_profile', to: 'repos#Software_trainers_profile', as: "Software_trainers_profile"
end
