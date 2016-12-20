# _Shoe Store App_

#### By _**Marty Kovach**, 12/16/2016_


## Known issues


if a blank field is submitted into the add brand field, it will result in an error.




## Description

This web app leverages the power of Active-Record to create a app to track shoe stores that sell _many brands_ and brans that are _sold at many shoe stores_.



**User Stories**

* As a user, I want to be able to add, update, delete and list shoe stores.
* As a user, I want to be able to add and list new shoe brands.
* As a user, I want to be able to add shoe brands in the application (don't worry about updating, listing or destroying shoe brands).
* As a user, I want to be able to add existing shoe brands to a store to show where they are sold.
* As a user, I want to be able to associate the same brand of shoes with multiple stores.
* As a user, I want to be able to see all of the brands a store sells on the individual store page.
* As a user, I want store names and shoe brands to be saved with a capital letter no matter how I enter them.
* As a user, I do not want stores and shoes to be saved if I enter a blank name.

## Setup/Installation Requirements

* Clone this repo: https://github.com/tyedye105/rshoes_store`
* Change to the repo directory: `cd {repo}`
* Install gems: `bundle install --path vendor/bundle`
* Install the database: *instruction below*
* Run the app: `ruby app.rb`

## Database Setup Instructions

* install and start postgres
* run: `bundle exec rake db:create`
* run: `bundle exec rake db:migrate`
* run: `bundle exec rake db:test:prepare`

## Technologies Used

_Ruby, Sinatra, SQL, Postgres _

### License

*MIT License*

Copyright (c) 2016 **_Marty Kovach_**
