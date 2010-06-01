class User < ActiveRecord::Base
  attr_accessor :openid_username  
  
  acts_as_authentic do |c|  
    c.openid_required_fields = [:email,:nickname]
    c.crypted_password_field = false
  end
  
  
  private
    def map_openid_registration(registration)  
      self.email = registration["email"] if email.blank? 
      self.username = registration["nickname"] if username.blank? 
    end    
end
