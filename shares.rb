class Shares < Sinatra::Base
  helpers Sinatra::ContentFor2
  
  get '/' do
    erb :index
  end

  get '/support' do
    erb :support
  end
end
