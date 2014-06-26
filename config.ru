# GEMS
require 'sinatra'
require 'rack-rewrite'

# APP
require './server'

use Rack::Rewrite do
  r301 %r{.*}, 'http://galacticaa.net$&', :if => Proc.new {|rack_env|
    rack_env['SERVER_NAME'] != 'galacticaa.net' and ENV['RACK_ENV'] == 'production'
  }
end

run Sinatra::Application
