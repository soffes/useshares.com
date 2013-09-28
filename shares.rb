class Shares < Sinatra::Base
  APP_STORE_URL = 'https://itunes.apple.com/app/id717510981'.freeze

  helpers Sinatra::ContentFor2
  helpers do
    def app_store_url
      APP_STORE_URL
    end

    def app_store_button(white = false)
      %Q{<a href="#{APP_STORE_URL}" class="app-store" rel="external nofollow"><img src="/assets/app-store#{white ? '-white' : ''}.svg" alt="Download on the App Store"></a>}
    end
  end

  get '/' do
    erb :index
  end

  get '/support' do
    erb :support
  end
end
