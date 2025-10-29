Rails.application.routes.draw do
  devise_for :users, path: 'secure'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/home', to: 'pages#home'
  get '/about', to: 'pages#about'
  get "up" => "rails/health#show", as: :rails_health_check


  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "pages#home"
end
