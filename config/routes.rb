Bwag::Application.routes.draw do
  resources :events
  resources :users

  root :to => "home#index"
end
