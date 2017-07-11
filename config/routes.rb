Rails.application.routes.draw do
  namespace :admin do
    resources :routes
    resources :route_spots
    resources :spots

    root to: "routes#index"
  end

  scope module: :web, defaults: { format: :html } do
    root to: 'top#index'
    resources :routes, only: %i(index show)
    resources :spots, only: %i(show)
  end

  get '*not_found' => 'application#routing_error'
  post '*not_found' => 'application#routing_error'

  resources :privacy_policy, only: %i(index)
end
