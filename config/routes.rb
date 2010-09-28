Bwag::Application.routes.draw do
  resource :events
  resource :users

  root :to => "home#index"
end
