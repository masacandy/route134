Rails.application.routes.draw do
  scope module: :web, defaults: { format: :html } do
    root to: 'top#index'
    resources :routes, only: %i(index show)
  end

  get '*not_found' => 'application#routing_error'
  post '*not_found' => 'application#routing_error'
end
