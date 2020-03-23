require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

 get '/' do
   erb :user_input
 end
#  post "/" do 
post '/piglatinize' do
    converter = PigLatinizer.new
    converter.piglatinize(params[:user_phrase])
end
end