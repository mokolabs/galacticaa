require 'sinatra'

set :environment, :production
set :public_folder, File.expand_path('public', File.dirname(__FILE__))
enable :static

get "/" do
  response.headers['Cache-Control'] = 'public, max-age=300'
  File.read(File.join(settings.public_folder, "/index.html"))
end

get "/:one/:two/:three/:four/?" do
  response.headers['Cache-Control'] = 'public, max-age=300'
  File.read(File.join(settings.public_folder, params[:one], params[:two], params[:three], params[:four] + "/index.html"))
end

get "/:one/:two/:three/?" do
  response.headers['Cache-Control'] = 'public, max-age=300'
  File.read(File.join(settings.public_folder, params[:one], params[:two], params[:three] + "/index.html"))
end

get "/:one/:two/?" do
  response.headers['Cache-Control'] = 'public, max-age=300'
  File.read(File.join(settings.public_folder, params[:one], params[:two] + "/index.html"))
end

get "/:one/?" do
  response.headers['Cache-Control'] = 'public, max-age=300'
  File.read(File.join(settings.public_folder, params[:one] + "/index.html"))
end