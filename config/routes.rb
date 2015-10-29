Rails.application.routes.draw do
  namespace :api, path: '/', constraints: { subdomain: 'api' } do
    resources :stores
  end
  resources :stores
  root to: 'stores#index'
end
