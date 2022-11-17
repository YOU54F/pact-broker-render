# pact-broker-render

[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy?repo=https://github.com/YOU54F/pact-broker-heroku)

# Example of Pact Broker configuration on Render with basic authentication

Pre Requisities

- Render account https://render.com/

## Setup with Render

1. Click the deploy to render button
2. Set up postgres database https://render.com/docs/databases#creating-a-database
3. Grab the connection string https://render.com/docs/databases#connecting-from-outside-render
4. Configure environment variables https://render.com/docs/configure-environment-variables
  1. DATABASE_URL
  2. PACT_BROKER_USERNAME
  3. PACT_BROKER_PASSWORD
5. Select `Manual Deploy` in Render, and then select 'Clear build cache and deploy`

Your Pact Broker instance is now available!
