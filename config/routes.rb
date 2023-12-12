Rails.application.routes.draw do
  # get 'courses/hadoop'
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'repos#index'
  resources :repos
  # resources :courses
  get 'home', to: 'repos#home',as: 'home'
  get 'allcourses', to: 'repos#allcourses', as: 'allcourses'
  get 'services', to: 'repos#services', as: 'services'
  get 'software_training', to: 'repos#software_training', as: "software_training"
  get 'Software_trainers_profile', to: 'repos#Software_trainers_profile', as: "Software_trainers_profile"
  get 'view_courses', to: 'repos#view_courses', as: "view_courses"
  get 'signup', to: 'repos#signup', as: "signup"
  get 'trainars_profile', to: "repos#trainars_profile", as: "trainars_profile"
end
