class ApplicationMailer < ActionMailer::Base
  default from: "secret@santa.com"
  layout "mailer"
end
