Rails.application.routes.draw do
  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :routes, only: [:show, :index]
    end
  end
end
