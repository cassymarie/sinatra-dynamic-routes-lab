require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i.abs2()
    "#{@num}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    full_saying = ''

    @num.times{ full_saying += @phrase}

    full_saying

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    answer = 'No answer'

    case params[:operation]
    when 'add'
      answer = (@num1 + @num2)
    when 'multiply'
      answer = (@num1 * @num2)
    when 'subtract'
      answer = (@num2 - @num1)
    when 'divide'
      answer = (@num1 / @num2)
    end

      answer.to_s
  end
end