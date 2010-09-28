class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'
  helper_method :current_user  
  
  private 
    
    def current_user  
      false
    end  
end
