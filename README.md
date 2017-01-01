[![Build Status](https://travis-ci.org/climatepatch/carbonsource.svg?branch=master)](https://travis-ci.org/climatepatch/carbonsource)
#CarbonSource v0.0.2

CarbonSource is a website designed to help people better understand the politicians they vote for. We achieve this by allowing users to easily search through politicians, and view summaries of their views on various topics.

##About ClimatePatch
Find out more about our organisation [here](http://climatepatch.org).

##Project goals:
- Allow users to easily search through a large number of politicians to select the one they wish to view.
- Accumulate a wide variety of data from a number of sources.
- Cover a broad range of environmental topics.
- Allow users to compare politicians directly.
- Present a single score number per politician, but also more detailed results. Back up all claims with the source.
- Deliver content in a visual manner, utilizing graphs or charts to help depict politicians views

##Important Links  
1. [Trello Board](https://trello.com/b/iV377Jzq/carbon-source)
2. [Spec Sheet (RFC)](https://docs.google.com/document/d/18kNvxdlU6cM6G76LYWRXyilrtB2Zra2A3IAHJPfpi-c/edit)

##Important information:

###Prerequisites to run:
- RVM
- Ruby v2.3.1
To run the current dev build of the website, clone this repo to your machine, and run the following in your command line, while in the project's root directory:
- `gem install bundler` installs the bundler rubygem
- `bundle install` installs dependencies listed in the gemfile

###DB setup:
- `psql -u postgres` (enters the postgres REPL as root)
- `CREATE ROLE (ENTER_USERNAME_HERE) LOGIN password (YOUR_NEW_PASSWORD);` creates a new postgres user.

NOTE: the above commands only need to be run once per machine.

- `psql -u (Same username as above)` Enters the REPL as the newly created user.
- `CREATE DATABASE carbonsource_development ENCODING 'UTF8' OWNER '(Your username as above)'`
- Leave the prompt with '\q'

All done!

Run `rake db:migrate` To run migrations and update the database with the current schema

Finally run `bin/rails server` or simply `rails s` to start up the server.


#The Politican Scorecard

Initial Requirements for Minimum Viable Product:

Objectives:

We can create a grading profile for each politician similar to the NRA's gun friendly grading site: https://www.nrapvf.org/grades/. We should probably then display the grade with what factors determined that grade, similar to a skillset(Example: Renewable Energy[50], Recycling[20]). Politicians can also be certified through sponsors such as the Rainforest Alliance. Relationships should be displayed such as Company A donated 50,000 to Senator Doe.

##Present Climate Change opinion/status of the following:

Big Political figures:

* President/VP
* US Congress
* US Senate
* US House
* State Legislature


## Types of Information

* Voting Record
* Policies
* Quotes
* Campaign Donations


##Key features:
1. Website:
   * Robust, relational database for storing numerous entries on various topics.
   * Simple but powerful user search function.
   * Visual content delivery.
   * Text content delivery.
   * Comparing multiple politicians.
2. Scraper/ parser + database accessor:
   * Easy functional way to quickly retrieve database items.
   * Scraper that parses articles and documents, and outputs the format nicely to
   * Manual input initially- develop automatic crawler
   * Database accessor that stores sets of entries into the production database


## General user stories:
* As a user, so that I can quickly input my search request, I should be able to easily submit my search request to a visible field.


* As a user, so that I can easily interpret the resulting data, I should be clearly presented with both visual and textual information relating to my query.


* As an advanced user, so that I can find what I am looking for more easily, advanced search options should be available.
(Should we allow db queries?)


* As a visually impaired user, so that I can also use the site, the site should be optimised for readers and colour blindness.


* As a user that is searching for data, so that I can easily access large amounts of carbonsource data, there should be an advanced search option to allow for large data amounts.


* As a maintainer, so that I can quickly submit large amounts of data to the scraper, the interface should be easy to use, and allow for quick submission of data.


* As a maintainer, so that I do not have to format resulting data, the parser should output data in a suitable format for easy manipulation and storage.
