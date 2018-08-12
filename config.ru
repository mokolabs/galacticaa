# Load dependencies
require 'sinatra'
require 'rack-rewrite'
require './app'

use Rack::Rewrite do
  r301 %r{.*}, 'https://galacticaa.net$&', :if => Proc.new {|rack_env|
    rack_env['SERVER_NAME'] != 'galacticaa.net' and ENV['RACK_ENV'] == 'production'
  }
end

run Sinatra::Application
