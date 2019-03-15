# Nexmo Number Insights with Rails

A Rails app to demonstrate how to use the Nexmo Number Insights API with Ruby on Rails.

## Prerequisites

* [A Nexmo account](https://dashboard.nexmo.com/sign-up)
* [Ruby 2.5+](https://www.ruby-lang.org/)
* [Rails 5.2+](http://sinatrarb.com/)

## Getting Started

```sh
# clone this repository
git clone git@github.com:Nexmo/nexmo-rails-number-insights.git
# change to folder
cd nexmo-rails-number-insights
# install dependencies
bundle install
# copy example .env to actual .env
cp .env.sample .env
```

Next you will need to sign up for a Nexmo account, grabv your API credentials from the API dashboard, register a phone number and put your `api_key` and `api_secret` in the `.env` file.

## Usage

To start your Rails application run the following from the command line:

```sh
# Set up the database
rake db:migrate
# Initialize the server
rails s
```

You can now visit [localhost:3000/number_insights](http://localhost:3000/number_insights) in your web browser.

You can enter any number from any country in the number input and choose any of the Number Insight options:

* Basic
* Standard
* Advanced

More information on each of these can be found on [Nexmo Developer](https://developer.nexmo.com/api/number-insight).

As this is a simple starter app, this app does not validate or store the responses.

## License

This project is licensed under the [MIT License](LICENSE).