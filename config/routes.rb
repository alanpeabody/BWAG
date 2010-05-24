Bwag::Application.routes.draw do |map|  
 
  
  # Registration and session routes
  resource :users
  resource :user_sessions, :only => [:new, :create, :destroy]
  
  match 'sign-in'  => 'user_sessions#new',    :as => 'sign_in'
  match 'sign-up'  => 'users#new',            :as => 'sign_up'
  match 'sign-out' => 'user_sessions#destroy', :as => 'sign_out'
  
  # Root Path
  root :to => "home#index"
end
