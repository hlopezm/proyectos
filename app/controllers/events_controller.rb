class EventsController < ApplicationController
  def index
    @events = Event.for_today
  end

  def show
  end

  def new
  end

  def create
    @event = Event.create(create_params)

    redirect_to @event
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def create_params
    params.require(:event).permit(:name, :description, :start_at, :end_at, :address)
  end
end
