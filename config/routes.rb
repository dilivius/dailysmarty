Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :posts
    resources :topics
    resources :admin_users
    root to: "users#index"
  end

  resources :topics do
  	scope module: :topics do
  		resources :posts, except: [:new, :create]
  	end
  end
  get 'posts/new', to: 'topics/posts#new', as: 'new_post'
  post 'posts', to: 'topics/posts#create', as: 'create_post'
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: 'static#home'
end