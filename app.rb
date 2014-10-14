# CONFIG
set :environment, :production
set :public_folder, File.expand_path('public', File.dirname(__FILE__))
enable :static

# ROUTES
get "/" do
  response.headers['Cache-Control'] = 'public, max-age=300'
  File.read(File.join(settings.public_folder, "/index.html"))
end

get "/feed/atom", :provides => ['atom'] do
  File.read(File.join(settings.public_folder, "feed/atom.xml"))
end

get "/:one/:two/:three/:four/:five/?" do
  response.headers['Cache-Control'] = 'public, max-age=300'
  File.read(File.join(settings.public_folder, params[:one], params[:two], params[:three], params[:four], params[:five] + "/index.html"))
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
