require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name}".reverse
  end

    get '/square/:number' do
      @number = params[:number].to_i
      @squared = @number * @number
      "#{@squared}".to_s
    end

    get '/say/:number/:phrase' do
      string = ''
      @number = params[:number].to_i
      @phrase = params[:phrase]
      @number.times do string += @phrase
      end

      string
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      @word1 = params[:word1]
      @word2 = params[:word2]
      @word3 = params[:word3]
      @word4 = params[:word4]
      @word5 = params[:word5]

      "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    end

    get '/:operation/:number1/:number2' do
      @operation = params[:operation]
      @n1 = params[:number1].to_i
      @n2 = params[:number2].to_i

      answer = "Unable to preform this operation"

    case @operation
      when 'add'
        answer = (@n1 + @n2).to_s
      when 'subtract'
        answer = (@n1 - @n2).to_s
      when 'multiply'
        answer = (@n1 * @n2).to_s
      when 'divide'
        answer = (@n1 / @n2).to_s
      end
    end

end