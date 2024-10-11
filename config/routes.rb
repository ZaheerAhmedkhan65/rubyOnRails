Rails.application.routes.draw do
  

 
 # root "path"
  root 'say#home'
    
  resources :students
  #custom routes
  get 'home' => 'say#home'
  get 'students' => 'students#index'
  get 'about-us' => 'say#about_us'
  get 'faqs' => 'say#faqs'
  
  resources :assignments
  get 'assignments/new' => 'assignments#new'
  get 'assignments/:id' => 'assignments#show'
  get 'assignments' => 'assignments#index'

  get 'contactform' => 'contactform#show'
  get 'new' => 'contactform#new'
  post 'contactform' => 'contactform#create'

  
  
 

  
  
  # Rails health check
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

end
