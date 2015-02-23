require 'api_constraints'

Rails.application.routes.draw do
  root 'home#index'
  resources :events
  resources :speakers

  namespace :api, defaults: { format: 'json' } do
    scope module: :v1, contraints: ApiConstraints.new(version: 1, default: true) do
      resources :events
      resources :speakers
    end
  end
end
