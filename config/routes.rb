MumbaiArticle::Application.routes.draw do
  root "home#index"
  resources :articles
  resources :blogs
 
end
