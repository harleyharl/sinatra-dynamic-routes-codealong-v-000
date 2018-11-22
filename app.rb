require_relative 'config/environment'
require 'pry'

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
  get "/goodbye/:name" do
    @user_name = params[:name]
    "goodbye #{@user_name}."
  end

  post "/multiply/:num1/:num2" do
    binding.pry
    @number1 = params[:num1]
    @number2 = params[:num2]
    @number1 + @number2
  end

end
