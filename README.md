# Rails Launchpad

A great and only somewhat-opinionated starting place, preconfigured with:

- User authentication + account creation with Clearance
- Admin roles for users (with protected admin routes)
- A basic ActionCable setup
- (TODO) A basic mailer (send `helpers.send_test_email(your_address)` from the console)
- (TODO) One-line deployment to Heroku (`that line will go here!`)

Launchpad adds the following to a standard Rails install:

- Postgres
- Bootstrap 4 (including JS)
- Clearance
- (TODO) Redis

And some other helper gems, like:

- Faker (text + general test data generator)
- Factory Bot (tame your test models)
- Groupdate (date range querying)
- Kaminari (pagination)
- Font Awesome (free icons)
- HTTParty (easy HTTP requests)

Lastly, it takes care of little settings you might forget to change:

- Enforcing SSL
- Using Puma
- Cleaning up default mailer setup

## Installing

1. Clone this repo `git clone this-repo-url new-repo-name`
2. Install the specified Ruby version (I'm using RVM) `rvm install 2.6.0`
3. Set up a new gemset `rvm use ruby-2.6.0@new-repo-name --create`
4. Install gems `bundle install`
5. Set up the database `rails db:setup`
6. Start the server `rails s`
7. Visit the local URL your server specifies (probably `localhost:3000`)

Now you're off to the races!
