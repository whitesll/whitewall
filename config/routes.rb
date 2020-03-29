Rails.application.routes.draw do
  devise_for :users
  root "videos#index"
  resources :videos, only: [:show] do
    get :about, on: :collection
    resources :videocomments, only: :create
  end
  resources :posts, only: [:index, :create, :new, :show] do
    get :createpage, on: :collection
    resources :comments, only: :create
  end
  resources :users, only: [:show, :edit, :update] do
    collection do
      get :createpage
      get :editpage
    end
  end
  post   '/like/:comment_id', to: 'likes#like',   as: 'like'
  delete '/like/:comment_id', to: 'likes#unlike', as: 'unlike'
  post   '/videolike/:videocomment_id', to: 'videolikes#like',   as: 'videolike'
  delete '/videolike/:videocomment_id', to: 'videolikes#unlike', as: 'videounlike'
end