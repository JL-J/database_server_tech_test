# Database server #

## Getting started ##
- Clone this repository: `git clone git@github.com:JL-J/database_server_tech_test.git`
- Run `bundle install`
- To start the server, load the app file from the command line `ruby app.rb`
- Visit `localhost:4000` in your browser
- To store data in the memory visit `localhost:4000/set?` and add a key value pair to the url, e.g.: `localhost:4000/set?somekey=somevalue`
- To retrieve data from the memory visit `localhost:4000/get?key=` and add the key that you are searching for to the url, e.g.: `localhost:4000/get?key=somekey`

## Running tests ##
Run RSpec form the command line: `rspec`

## Specification ##
You receive a message from a prospective employer:

"Before your interview, write a program that runs a server that is accessible on `http://localhost:4000/`. When your server receives a request on `http://localhost:4000/set?somekey=somevalue` it should store the passed key and value in memory. When it receives a request on `http://localhost:4000/get?key=somekey` it should return the value stored at `somekey`. Store the data in memory, not in a database, but bear in mind that you will later need to add a database to this code."

Create a new git repository and write code to fulfill the brief to the best of your ability. We will be looking for clean, well tested code in your choice of technology. In addition, the last sentence of the brief implies that you should consider how the code could easily be extended to add an as-yet-unknown data store.

If you still have time at the end of the day, you can extend the code by adding a data store of your choice.

## My approach ##
This program is written in Ruby and tested using RSpec and Capybara. I chose to use Sinatra for this project as it's lightweight and keeps the project minimal. If this project were to be significantly extended then I would consider moving the program onto something like Rails which can more easily integrate other features.

The program is structured in the MVC format. The logic for the memory has been extracted into an independent class so that it could be easily adapted if a database was added.

Whilst the view for the page '/set' could be considered surplus to the requirements, I decided to include one for two reasons:
  a) Testing;
  b) So the user can be assured their key-value pairs are being submitted.     
Considering the user experience, I also decided to set up '/' to redirect to '/set' as I did not want the user to be greeted by an error if they accidentally went straight to `localhost:4000/`.
