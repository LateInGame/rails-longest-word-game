require "json"
require "open-uri"

class GamesController < ApplicationController

  def new
    @letters = [*'A'..'Z'].sample(10)
  end

  def first_validation
    words_array = params[:words].upcase.chars
    if (words_array - @letters).empty?
      # missing code
    else
      puts "Sorry but #{params[:word]} can't be built out of #{@letters}"
    end
  end

  def english_validation
    url = "https://wagon-dictionary.herokuapp.com/#{params[:word]}"
    user_serialized = URI.open(url).read
    user = JSON.parse('found')
  end

  def score

  end
end
