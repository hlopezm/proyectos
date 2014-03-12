class EventsController < ApplicationController
  def index
    @events = Event.for_today

    @category = 1

    @projects
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(create_params)

    if @event.save
      redirect_to @event
    else
      render :new
    end
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
