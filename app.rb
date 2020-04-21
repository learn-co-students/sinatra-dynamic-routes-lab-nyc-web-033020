require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reverse_name = params[:name]
    @reverse_name.reverse
  end

  get '/square/:number' do
    @number = params[:number]
    (@number.to_i ** 2).to_s
    # @square.to_s
  end

  get '/say/:number/:phrase' do
    phrase = " "
    @number = params[:number]
    num = @number.to_i
    @phrase = params[:phrase]
    num.times do
       phrase += @phrase
      end
    phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  params[:word1]+' '+params[:word2]+' '+params[:word3]+' '+params[:word4]+' '+params[:word5]+'.'
  end

  get '/:operation/:number1/:number2' do

    if params[:operation] == 'add'
      (params[:number1].to_i + params[:number2].to_i).to_s
    elsif params[:operation] == 'subtract'
      (params[:number1].to_i - params[:number2].to_i).to_s
    elsif params[:operation] == 'multiply'
      (params[:number1].to_i * params[:number2].to_i).to_s
    elsif params[:operation] == 'divide'
      (params[:number1].to_i / params[:number2].to_i).to_s
    else
      'That is not an accepted operation.'
    end
  end

end