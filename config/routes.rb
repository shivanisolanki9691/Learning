Rails.application.routes.draw do
  # get 'courses/hadoop'
  # get 'courses/hadoop'
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'repos#index'
  resources :repos
  get 'home', to: 'repos#home',as: 'home'
  get 'allcourses', to: 'repos#allcourses', as: 'allcourses'
  get 'services', to: 'repos#services', as: 'services'
  get 'software_training', to: 'repos#software_training', as: "software_training"
  get 'Software_trainers_profile', to: 'repos#Software_trainers_profile', as: "Software_trainers_profile"
  get 'view_courses', to: 'repos#view_courses', as: "view_courses"
  get 'signup', to: 'repos#signup', as: "signup"
  get 'project', to: 'repos#project', as: 'project'
  get 'careers', to: "repos#careers", as: "careers"
  get 'about', to: "repos#about", as: "about"

  get 'trainers_profile', to: "repos#trainers_profile", as: "trainers_profile"
  get "student_enquiry", to: "repos#student_enquiry", as: "student_enquiry" 
  get "corporate_training", to: "repos#corporate_training", as: "corporate_training"
  get "feedback", to: "repos#feedback", as: "feedback"
  get "post_testimonials", to: "repos#post_testimonials", as: "post_testimonials"
  get "contact", to: "repos#contact", as: "contact"



  resources :courses
  get 'hadoop', to: 'courses#hadoop', as: "hadoop"
  get 'AWS', to: 'courses#AWS', as: "AWS"
  get 'dev', to: 'courses#dev', as: "dev"
  get 'sale', to: 'courses#sale', as: "sale"
  get 'python', to: 'courses#python', as: "python"
  get 'selenium', to: 'courses#selenium', as: "selenium"
  get 'language', to: 'courses#language', as: "language"
  get 'c', to: 'courses#c', as: "c"
  get 'data', to: "courses#data", as: 'data'
  get 'core', to: "courses#core", as: "core"
  get 'advansed', to: "courses#advansed", as: "advansed"
  get 'spring', to: "courses#spring", as: "spring"
  get "hibernate", to: "courses#hibernate", as: "hibernate"
  get "web", to: "courses#web", as: "web"
  get "struts", to: "courses#struts", as: "struts"
  get "xml", to: "courses#xml", as: "xml"
  get "cnet", to: "courses#cnet", as: "cnet"
  get "asp", to: "courses#asp", as: "asp"
end
