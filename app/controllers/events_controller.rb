class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user

    if @event.save
      flash[:notice] = "Event Saved"
      redirect_to @event
    else
      flash.now[:alert] = "There was an error saving the event."
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.assign_attributes(event_params)

    if @event.save
      flash[:notice] = "Event Saved"
      redirect_to @event
    else
      flash.now[:alert] = "There was an error saving the event."
      render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])

    if @event.destroy
      flash[:notice] = "\"#{@event.title}\" was deleted successfully."
      redirect_to action: :index
    else
      flash.now[:alert] = "There was an error deleting the event."
      render :show
    end
  end

  def index
    @events = Event.where(user: current_user)
  end

  def show
    @event = Event.find(params[:id])
    @contacts = @event.contacts
  end

  def event_params
    params.require(:event).permit(:title, :notes, :date, :category, :user, :user_ids, contact_ids:[])
  end
end
