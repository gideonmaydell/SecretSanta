# Preview all emails at http://localhost:3000/rails/mailers/participant_mailer
class ParticipantMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/participant_mailer/assignment
  def assignment
    participant = Participant.last

    ParticipantMailer.assignment(participant)
  end
end
