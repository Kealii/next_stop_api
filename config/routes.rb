Rails.application.routes.draw do
  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :routes,     only: [:show, :index] do
        get :stops
      end

      resources :stop_times, only: [:show, :index]
      resources :stops,      only: [:show, :index]
      resources :trips,      only: [:show, :index]

      get 'search', to: 'search#index'
    end
  end
end
