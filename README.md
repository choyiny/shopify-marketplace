# Shopify Marketplace Challenge
This Ruby on Rails backend API is built for Shopify's Summer 2017 Developer Intern Challenge.

Postman API Documentation: https://documenter.getpostman.com/view/3226853/RzteSrzB

## Setup
**Note**: This project requires Ruby 2.5.1+, and PostgreSQL 9.6+.

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
3. Modify `config/database.yml` with your own credentials.
4. Populate database with test data
```
$ rails db:setup
$ rails db:migrate
$ rails db:seed
```

## How to run
1. Run the rails server
```
$ cd marketplace-api
$ rails s
```
2. API is now available at `http://localhost:3000`
