# frozen_string_literal: true

Rails.application.routes.draw do
  get 'cities/index'
  resources :cities

  root to: 'cities#index'
end
