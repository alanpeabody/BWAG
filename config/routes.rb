Bwag::Application.routes.draw do
  devise_for :users

  resources :events
  resources :users

  root :to => "home#index"
end
