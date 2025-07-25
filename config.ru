require 'fileutils'
require 'logger'
require 'sequel'
require 'pact_broker'
require 'pg'
require 'sqlite3'

# use Rack::Auth::Basic, "Restricted Area" do |username, password|
#   username == ENV['PACT_BROKER_USERNAME'] and password == ENV['PACT_BROKER_PASSWORD']
# end
ENV['RACK_ENV'] ||= 'production'
app = PactBroker::App.new do | config |
  # change these from their default values if desired
  # config.log_dir = "./log"
  # config.auto_migrate_db = true
  # config.use_hal_browser = true
  config.port = ENV['PORT'] || 8080
  config.database_url = ENV['DATABASE_URL']  || 'sqlite://tmp/pact_broker.db'
end

run app