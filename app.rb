require 'sinatra/base'

class App < Sinatra::Application

  PRODUCT_LIST = []

  get '/' do
    erb :index
  end

  get '/products/new' do
    erb :add_product
  end

  post '/' do
    PRODUCT_LIST << params[:add_product]
    redirect '/'
  end
end