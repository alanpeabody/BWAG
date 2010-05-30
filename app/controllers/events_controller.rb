class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end
  
  def create
    @event = Event.new(params[:event])
    if @event.save
      redirect_to @event, :notice => "Event Saved"
    else
      flash.now[:alert] = "Event Not Saved!"
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end
  
  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event])
      redirect_to @event, :notice => "Event Saved"
    else
      flash.now[:alert] = "Event Not Saved!"
      render :edit
    end
  end

  def show
    @event = Event.find(params[:id])
  end    

end
