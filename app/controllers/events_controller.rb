class EventsController < ApplicationController

  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @events = Event.for_today

    respond_to do |format|
      format.html
      format.json
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(create_params)
    @event.user = current_user

    authorize @event

    if @event.save
      redirect_to @event
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
    authorize @event
  end

  def update
  end

  def destroy
  end

  def search
    @events = Event.name_like(params[:term])
  end

  private

  def create_params
    params.require(:event).permit(:name, :description, :start_at, :end_at, :address)
  end

end
