require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
  params[:name].reverse
  end

  get '/square/:number' do
  number = params[:number].to_i
  conv = number * number
  conv.to_s
  end

  get '/say/:number/:phrase' do
  output = " "
  params[:number].to_i.times do
  output += params[:phrase]
  end
  output
end


  get '/say/:word1/:word2/:word3/:word4/:word5' do
  combined = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  combined
  end

  get '/:operation/:number1/:number2' do
  num1 = params[:number1].to_i
  op = params[:operation]
  num2 = params[:number2].to_i

  result = " "

case params[:operation] 
when 'add'
  result = (num1 + num2).to.s
when 'multiply'
  result = (num1 * num2).to_s
when 'subtract'
  result = (num1 - num2).to_s
when 'divide'
  result = (num1 / num2).to_s
end
end



end