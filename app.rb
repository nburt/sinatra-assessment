require 'sinatra/base'

class App < Sinatra::Application
  get '/' do
    erb :index
  end

  get '/products/new' do
    erb :add_product
  end
end