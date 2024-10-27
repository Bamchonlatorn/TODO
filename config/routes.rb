Rails.application.routes.draw do
  resources :tasks do
    member do
      get 'complete'
    end
  end

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # PWA routes
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Set the root path to tasks#index
  root "tasks#index"
end
