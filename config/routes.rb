Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  resources :events
  devise_for :bloggers
  resources :projects
  resources :abouts
  resources :bloggers
resources :videos
resources :homes, except: [:show]
  root 'homes#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
