require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]

    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i

    "#{@num * @num}"
  end

  get '/say/:number/:phrase' do
    answer = ''

    params[:number].to_i.times do
      answer += params[:phrase]
    end

    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @wordOne = params[:word1]
    @wordTwo = params[:word2]
    @wordThree = params[:word3]
    @wordFour = params[:word4]
    @wordFive = params[:word5]

    @word = [@wordOne, @wordTwo, @wordThree, @wordFour, @wordFive].join(" ")

    "#{@word}."
  end

  get '/:operation/:number1/:number2' do
    @numOne = params[:number1].to_i
    @numTwo = params[:number2].to_i
    @operation = params[:operation]

    if @operation == 'add'
      "#{@numOne + @numTwo}"
    elsif @operation == 'subtract'
      "#{@numOne - @numTwo}"
    elsif @operation == 'multiply'
      "#{@numOne * @numTwo}"
    elsif @operation == 'divide'
      "#{@numOne / @numTwo}"
    end

  end

end