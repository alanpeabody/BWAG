class User < ActiveRecord::Base
  acts_as_authentic do |c|  
    c.openid_required_fields = [:email]  
  end
  
  
  private
    def map_openid_registration(registration)  
      self.email = registration["email"] if email.blank? 
    end  
end
