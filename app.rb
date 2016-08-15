require_relative 'config/environment'

class App < Sinatra::Base
require 'pry'
require_relative 'config/environment'

  get "/reversename/:name" do
     params[:name].reverse   #gets params automatically from above path
  end

  get "/square/:number" do
    number=params[:number].to_i
    #binding.pry
    (number*number).to_s
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase= params[:phrase]
    erb :say
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @array=[params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]].join(" ")
    @array + "."
    #erb :concatenate
  end

  get "/:operation/:number1/:number2" do
    @operation= params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    #binding.pry
    erb :operations
  end
end
