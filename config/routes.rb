Rails.application.routes.draw do
  scope module: :web, defaults: { format: :html } do
    root to: 'top#index'
  end
end
