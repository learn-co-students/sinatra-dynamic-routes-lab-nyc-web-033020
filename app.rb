require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse!
  end

  get "/square/:number" do
    num = params[:number].to_i
    sq = num * num
    sq.to_s
  end

  get "/say/:number/:phrase" do
    n = params[:number].to_i
    p = params[:phrase] * n
    p
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}." 
  end

  get "/:operation/:number1/:number2" do
    o = params[:operation]
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i
    case o
    when 'add'
      res = n1 + n2
    when 'subtract'
      res = n1 - n2
    when 'multiply'
      res = n1 * n2
    when 'divide'
     res = n1 / n2
    end
    res.to_s
  end

end
