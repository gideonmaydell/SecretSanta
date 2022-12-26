class ParticipantsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @participant = Participant.new(participant_params)
    @participant.event = @event
    if @participant.save
      redirect_to event_path(@event)
    else
      render 'events/show', status: :unprocessable_entity
    end
  end

  private

  def participant_params
    params.require(:participant).permit(:name, :email)
  end
end
