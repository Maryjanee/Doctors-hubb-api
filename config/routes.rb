# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [:create]
      resources :tokens, only: [:create]
      resources :doctors, only: [:create, :show]
      resources :appointments, only: [:create, :show, :destroy]
    end
  end
end
