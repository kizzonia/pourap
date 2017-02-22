Rails.application.routes.draw do

  resources :projects
  resources :abouts
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
