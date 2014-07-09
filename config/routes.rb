Rails.application.routes.draw do
  resources :posts

  devise_for :users
  resources :games

  root 'games#index'
  get "index" => "games#index"
  get "blog" => "posts#index"
  get "faq" => "pages#faq" #creates faq_path
  get "contact" => "pages#contact"
  get "recommend" => "pages#recommend"
  get "admin" => "pages#admin"

end
