MumbaiArticle::Application.routes.draw do
  root "home#index"
  resources :articles
  resources :blogs

  get 'signup', to: 'users#new'
  resources :users, except: [:new]
 
end
