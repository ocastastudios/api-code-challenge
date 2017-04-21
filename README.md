# Ocasta Coding Challenge

Our coding challenge is your opportunity to demonstrate your experience, skills, and aptitude by building a prototype for a room monitoring system.

We hope that this project will not take too much of your time. If there are things you are unfamiliar with we would like to think these will be useful to you in the future. If you have any questions please do not hesitate to [contact us](challenge@ocasta.com).


## Background

We are adding a feature to Oplift to see if a meeting room is in use. Any member of staff will be able to view the status of any rooom at any time through our Oplift apps and web interface. In addition we will allow administrators to add new rooms. An API server will provide the functionality for the web page and app. 

## API spec

All API calls made require a Basic Authentication header which should be checked against a list of users. You can use a pre-canned list of users and administrators, you do not need to provide any means for administering these.

- All API requests will be made using HTTP or HTTPS
- All responses will return appropriate HTTP Response codes and a JSON body.

Each room has:

- An unique ID
- A Name (max 50 characters)
- A state. Available with is true or false

API requests that can be made by any authenticated user

Method | Path | Description
--- | --- | ---
GET | /api/room  | Returns an array of all rooms and their state
GET | /api/room/:id  | Returns the id, name and state of the room identified by :id
PUT | /api/room/:id  | Sets the specified room's availability to false

API requests that can only be made by adminstrators

Method | Path | Description
--- | --- | ---
POST | /api/room  | Creates a new room. The POST body will be a JSON object containing a single `name` field which is the name of the new room
| GET | /api/room/usage  | Returns an array containing a history of room activity changes. The results from this request can be filtered by providing the following additional, optional query parameters: from, to and roomId. e.g. `/api/room/usage?from=2017-01-01T10:00:00Z&to=2017-01-01T20:00:00Z&roomId=abc123

### Your Task

Build the API server that can support the API described above.

You do not have to build a functional UI unless you want to show off your talents across the stack. We will test your API by using the it. You are encouraged to write tests to verify your own results.

Then send us a link to your repo. If it's a private github repo, please add martin@ocasta.com as an admin

In your repo, please include the following items in your README:

-	Description of the problem and solution.
-	Reasoning behind your technical choices, including architectural.
-	Trade-offs you might have made, anything you left out, or what you might do differently if you were to spend additional time on the project.
-	Link to to the hosted application where applicable.

This will give us insight into how you approached the challenge.


### Optional

A containerized solution is not a requirement but is definitely preferred as it is easier to deploy and test your solution. Therefore adding a `Dockerfile` to your solution is optional, but recommended.

Ideally, your API would be deployed to a public location (heroku, AWS, your choice) for us to test against.


### Show us your other projects! (optional)

If you have existing code that you would like to share, please follow these guidelines:

-	Include a link to the repository in the README file that is part of your coding challenge submission
-	A description of what the code does
-	If the repository has multiple contributors, please call out the parts that you were responsible for


Questions
---------
##### What application servers and frameworks can I use?
That’s entirely up to you. We ask that you explain the choices you’ve made. Please pick something you're familiar with, as you'll need to be able to discuss it. We use Wordpress and HapiJS.

##### What database should I use?
MySQL or PostgreSQL. We use MySQL in-house.

##### What will you be grading me on?
Elegance, robustness, understanding of the technologies you use, tests, security. 

##### Will I have a chance to explain my choices?
Feel free to comment your code, or put explanations in a pull request within the repo. If we proceed we’ll be asking questions about why you made the choices you made. 

##### Why doesn’t the test include X?
Good question. Feel free to tell us how to make the test better. Or, you know, fork it and improve it!