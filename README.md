Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by Gideon Maydell.

Authenticated users can create an event with a title, a maximum amount (for the gift), and a list of participants.

On the event is a button, that can randomly assign each participant with another. Of course, no-one can make a gift to oneself.

After the pairs are assigned, the program then sends an email to each participant to notify them of their Santa gift buddy. (only in development environment)

Local host: http://localhost:3000
Local host mail preview: http://localhost:3000/rails/mailers/participant_mailer/assignment
