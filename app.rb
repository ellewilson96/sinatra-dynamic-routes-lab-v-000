require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
 get '/reversename/:name' do
   @name = params[:name]
   "#{@name.reverse}"
 end

 get '/square/:number' do
   @square = params[:number].to_i
   "#{@square * @square}"
 end

 get '/say/:number/:phrase' do
   print (params[:phrase] + " ") * params[:number].to_i
 end
end
