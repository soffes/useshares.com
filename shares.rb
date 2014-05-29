class Shares < Sinatra::Base
  APP_STORE_URL = 'https://itunes.apple.com/app/shares-2/id717510981?mt=8&uo=4&at=1l3vmtU'.freeze

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
    erb :home
  end

  get '/support' do
    erb :support
  end

  get '/press' do
    erb :press
  end
end
