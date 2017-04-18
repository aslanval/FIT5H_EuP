class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :require_signin
  before_action :require_moderator, only: [:edit, :update, :destroy]

  def index
    @events = Event.where(start: params[:start]..params[:end], accepted: true)
    @all_events = Event.all
    @events_seminar = Event.seminar
    @events_holiday = Event.holiday
    @events_project = Event.project
    @events_other = Event.other
  end

  def show 
  end
  
  def new
    @event = Event.new
  end

  def edit 
  end

  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id 

    @event.save
  end
 
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to events_path, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:title, :date_range, :start, :end, :color, :accepted)
    end
end
