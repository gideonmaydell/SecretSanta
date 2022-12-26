Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by Gideon Maydell.

Authenticated users can create an event with a title, a maximum amount (for the gift), and a list of participants.

When the event is created, it must randomly assign each participant with another. Of course, no-one can make a gift to oneself.

After the event is created and the assignment is computed, the program then sends an email to each participant to notify them of their Santa gift buddy.
