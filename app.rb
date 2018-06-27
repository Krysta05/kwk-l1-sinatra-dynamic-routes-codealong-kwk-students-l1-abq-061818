require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
get '/medicines/:id' do
@medicines = all_the_medicines.select do 
  medicines.id == params[:id]
 end.first
  erb :'medicines/show.html'
end

 get "/Goodbye/:name" do
    @user_name = params[:name]
    "Goodbye #{@user_name}!"
  end
  