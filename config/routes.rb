MumbaiArticle::Application.routes.draw do
  devise_for :users
  root "home#index"
  resources :articles
  resources :blogs
  resources :views

  get 'signup', to: 'users#new'
  resources :users, except: [:new]
 
end
