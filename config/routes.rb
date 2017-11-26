Rails.application.routes.draw do  

  get 'welcome/index'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'user/show/:id', to: 'users#show', as: 'profile'
  #get 'playlist/:id/add', to: 'playlists#add', as: 'add'

  post 'song/show/:id/share' => 'songs#share', as: 'share'


  resources :users
    resources :albums do
      resources :album_comments
      put :favorite, on: :member
    end

  resources :albums do
    resources :album_comments
    put :favorite, on: :member
  end 
  resources :artists do
    resources :artist_comments
    put :favorite, on: :member
  end
  resources :songs do
    resources :song_comments
    put :favorite, on: :member
  end
  resources :sessions
  resources :playlists do
    put :favorite, on: :member
  end 
  resources :friendships

  root 'welcome#index'
end