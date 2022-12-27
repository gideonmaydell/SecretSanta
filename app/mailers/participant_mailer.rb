class ParticipantMailer < ApplicationMailer
  def assignment(participant)
    @participant = participant

    mail to: @participant.email, subject: "You have been invited to a secret santa game!"
  end
end
