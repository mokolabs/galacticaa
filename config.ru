require './server'
require 'rack-rewrite'

use Rack::Rewrite do
  r301 %r{.*}, 'http://galacticaa.net$&', :if => Proc.new {|rack_env|
    rack_env['SERVER_NAME'] != 'galacticaa.net'
  }
end

run Sinatra::Application
