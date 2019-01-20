# Shopify Marketplace Challenge
This Ruby on Rails backend API is built for Shopify's Summer 2019 Developer Intern Challenge.

- Github: https://github.com/choyiny/shopify-marketplace
- Project Requirements: https://docs.google.com/document/d/1J49NAOIoWYOumaoQCKopPfudWI_jsQWVKlXmw1f1r-4/
- Postman API Documentation: https://documenter.getpostman.com/view/3226853/RzteSrzB
- Thought Process Documentation: https://docs.google.com/document/d/15PqivlOVbLhae0YpMr-H7g_ksGAy3l3M3TMk6aJdlgo/
- API Endpoint: https://choyiny-marketplace.herokuapp.com/products (Note: Will take longer than expected on first load)

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
$ rails s
```
2. API is now available at `http://localhost:3000`
