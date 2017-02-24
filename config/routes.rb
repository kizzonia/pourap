Rails.application.routes.draw do

  resources :events
  devise_for :bloggers
  resources :projects
  resources :abouts
  resources :bloggers
resources :videos, only: [:index, :new, :create]
resources :homes
  root 'homes#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
