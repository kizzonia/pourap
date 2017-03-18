Rails.application.routes.draw do



  resources :banners, except: [:show]
  mount Ckeditor::Engine => '/ckeditor'
  resources :events do
    resources :eventscomments
    member do
      put "like", to: "events#upvote"
      put "dislike", to: "events#downvote"
      get 'download'
    end
  end
  devise_for :bloggers
  resources :projects
  resources :abouts
  resources :bloggers
  resources :videos
  resources :homes
  resources :musics do
    resources :musiccomments
    member do
      put "like", to: "musics#upvote"
      put "dislike", to: "musics#downvote"
    end
    end
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
