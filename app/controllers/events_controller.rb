class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @participant = Participant.new
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      redirect_to event_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path(@event), status: :see_other
  end

  def assigning
    @event = Event.find(params[:event_id])
    @participants = @event.participants
    receivers = @participants
    @participants.each do |participant|
      # 1.) Update target field of participant participant.target = receivers.sample.name
      target = (receivers - [participant]).sample.name
      participant.update(target: target)
      # 2.) Remove receiver from list permanently.
      receivers -= [Participant.find_by(name: target)]
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :maximum_amount, :participants)
  end
end
