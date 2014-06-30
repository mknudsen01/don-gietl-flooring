get '/' do
  @photos = Photo.all
  erb :index
end

post '/' do
  photo = Photo.new
  photo.file = params[:image]
  photo.save
  redirect to('/')
end