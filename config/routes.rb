Rails.application.routes.draw do
  get "tip_calculator/index"
  get "home/index"
  devise_for :admins
  namespace :admin do
    #get "admin/dashboard/index"
    get 'dashboard', to: 'dashboard#index'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  root "home#index"
  get 'tip_calculator', to: 'tip_calculator#index'
  post 'tip_calculator', to: 'tip_calculator#create'

end
