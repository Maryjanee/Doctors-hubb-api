# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users
      resources :tokens
      resources :doctors
      resources :appointments
    end
  end
end
