##Tuesday CC

Prompt: Hi! I’m Karen and I’m running for office in the great state of Michigan. I’d really like your help: I need a way to have people sign up to volunteer on my campaign. In particular, I need volunteers to give me their first name, last name, middle initial, and date of birth. I also need to know what their political interests are.

To help Karen, I've created a simple Ruby on Rails form which is a Volunteer Sign UpForm that takes in the fields that Karen requested (name, dob, political interest) and saves them to the SQLite database. Along with these fields, I've also added an input field that takes in the volunteer's email address so that we can keep that in the database and use it to communicate with the volunteers. This email address is validated on uniqueness so the same email address cannot be entered twice. 

##Instructions
Clone the repo down and run bundle install in the terminal. Then run a rails db:migrate,  start up the server locally running rails server, and go to http://localhost:3000/volunteers/new to see the signup form.
