require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    string = ''
    @number.times do
      string += "#{@phrase}"
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = ''
    params.each { |k,v| string += " #{v}" }
    string += '.'
    string.strip
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operation == "add"
      "#{@num1 + @num2}"
    elsif @operation == "subtract"
      "#{@num2 - @num1}"
    elsif @operation == "multiply"
      "#{@num1 * @num2}"
    else
      "#{@num1 / @num2}"
    end
  end
end
