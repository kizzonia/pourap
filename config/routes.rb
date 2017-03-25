Rails.application.routes.draw do


  resources :facts

  resources :banners, except: [:show]
  mount Ckeditor::Engine => '/ckeditor'
  resources :events do
    collection do
      get 'search'
    end
    resources :eventscomments
    member do
      put "like", to: "events#upvote"
      put "dislike", to: "events#downvote"

    end
  end
  devise_for :bloggers
  resources :projects
  resources :abouts
  resources :bloggers, only: [:index]
  resources :videos do
    collection do
      get 'search'
    end
    member do
      put "like", to: "videos#upvote"
      put "dislike", to: "videos#downvote"
    end
  end
  resources :homes
  resources :musics do
    collection do
      get 'search'
    end
    resources :musiccomments
    member do
      put "like", to: "musics#upvote"
      put "dislike", to: "musics#downvote"
      get 'download', to: "musics#download"
    end
    end
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
