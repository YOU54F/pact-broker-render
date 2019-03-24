# pact-broker-heroku

# Example of Pact Broker configuration on heroku with basic authentication

## Create your Pact Broker project

Install

```
$ bundle
$ git add .
$ git commit -m "Initial commit"
```

Install Heroku CLI tools and login

It's now time to deploy to heroku! Assuming you already have an account, you need to create a new application with a postgres add-on:
```
$ heroku create
$ heroku addons:add heroku-postgresql
$ heroku config:set PACT_BROKER_USERNAME=admin
$ heroku config:set PACT_BROKER_PASSWORD=changeme
$ git push heroku master
```
Your Pact Broker instance is now available!