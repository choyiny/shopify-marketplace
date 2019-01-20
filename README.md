# Shopify Marketplace Challenge
This Ruby on Rails backend API is built for Shopify's Summer 2017 Developer Intern Challenge.

## Setup
**Note**: This project requires Ruby 2.6.0, Docker, and Docker Compose.

1. Clone this repository
```
$ git clone https://github.com/choyiny/shopify-marketplace
```
2. Change directory and install the necessary gems into the gemset
```
$ cd shopify-marketplace
$ rvm gemset create marketplace
$ rvm gemset use marketplace
$ gem install bundler
$ bundle install
```
3. Run the postgres database
```
$ docker-compose up -d
```
4. Populate database with test data
```
$ rake db:migrate && rake db:seed
```
## How to run
1. Run the postgres database
```
$ docker-compose up -d
```
2. Run the rails server
```
$ cd marketplace-api
$ rails s
```
