Rails.application.routes.draw do
  get 'cities/index'
  resources :cities

  root to: 'cities#index'
end
