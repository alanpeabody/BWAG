class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def edit
    @user = current_user
  end

  def update  
    @user = current_user
    @user.attributes = params[:user]  
    #save in block because that is how authlogic must be done.
    @user.save do |result|  
      if result  
        flash[:notice] = "Successfully updated profile."  
        redirect_to root_url  
      else  
        render :action => 'edit'  
      end  
    end  
  end
  
  def show
    @user = params[:id] ? User.find(params[:id]) : current_user
  end

  def new
    @user = User.new
  end
  
  def create  
    @user = User.new(params[:user])  
    @user.save do |result|
      if result  
        flash[:notice] = "Registration successful."  
        redirect_to root_url  
      else  
        render :action => 'new'  
      end  
    end  
  end  

end
