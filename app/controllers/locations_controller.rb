class LocationsController < ApplicationController  
  
  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end
  
  def create
    @location = Location.new(params[:location])
    if @location.save
      redirect_to @location, :notice => "Location Saved"
    else
      flash.now[:alert] = "Location Not Saved!"
      render :new
    end
  end

  def edit
    @location = Location.find(params[:id])
  end
  
  def update
    @location = Location.find(params[:id])
    if @location.update_attributes(params[:location])
      redirect_to @location, :notice => "Location Saved"
    else
      flash.now[:alert] = "Location Not Saved!"
      render :edit
    end
  end

  def show
    @location = Location.find(params[:id])
  end  

end
