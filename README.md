# Jokes On Us

Welcome to Jokes On Us.  The application is built entirly with in Ruby on Rails.  All database information can be located in the db folder including migration, seed, and schema.  Server models, controllers, and routes use restful practices.  The 'front-end' is written using Embedded Ruby (ERB) and HTML and is located in the views folder.  


## Gem files of Importance:

* Ruby Rails version 6

* sqlite3

* faker

## Architecture and Models
The 5 models represented her inclued:
* User / Club / Review / Joke
* Gig (join table)

## User Stories
1. A user can book a gig
2. A user can add a joke to the forum
3. A user can browse and like other comedians jokes
4. A user can sign and and delete their profile

![Read Me Server](app/assets/images/JokesOnUsGiphy.gif)

## To Run
As of the date of writing this (2/4/21) Node v14.5.0 is used as sass issues have not been resolved with current Node v15+

**Setup**
* git clone git@github.com:JlordA/jokes_on_us.git
* cd jokes_on_us
* bundle install or npm install

**To start the Client and Server**
* rails s
