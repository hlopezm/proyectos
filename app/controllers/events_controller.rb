class EventsController < ApplicationController

  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @events = Event.for_today

    @category = 1

    @projects
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

  # def authenticate_user!
  #   @user = User.find(.....)
  #   if @user
  #     # continue
  #   else
  #     render :
  #     false
  #   end
  # end
end
