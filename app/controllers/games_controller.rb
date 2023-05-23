class GamesController < ApplicationController

  def new
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end

  def score
    word = params[:word]
    letters = params[:letters]

  if word != letters
    return "Sorry but #{word} can't be built out of #{letter}"

  elsif word != english_word?
    return 

  else

  end

end



def english_word?(word)
  response = URI.open("https://wagon-dictionary.herokuapp.com/#{word}")
  json = JSON.parse(response.read)
  return json['found']
end
