class Api::GamesController < ApplicationController
  def name
    @your_name = params["my_name"]
    @capitalized_name = params["my_name"].upcase
    render "name.json.jbuilder"
  end

  def first_letter
    @name = params["name"]
    if @name[0].downcase == "a"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end
    render 'first_letter.json.jbuilder'
  end

  def guess
    @number = params["guess"].to_i
    target = 42

    if @number > target
      @message = "Too High, try something lower."
    elsif @number < target
      @message = "Too Low, you really should aim higher"
    else
      @message = "You got it, next beer's on me."
    end

    render 'guess.json.jbuilder'
  end
end









