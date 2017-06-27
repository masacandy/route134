Rails.application.routes.draw do
  scope module: :web, defaults: { format: :html } do
    root to: 'top#index'
    resources :routes, only: %i(index)
  end
end
