class PagesController < ApplicationController

  def fortune_method
    fortunes = ["You will receive a million more wishes", "You will find 1 million dollars", "You will lose everything"]
    render json: fortunes.sample
  end

  def lotto_method
    lotto_number = (rand(60) + 1).to_s + "-" +(rand(60) + 1).to_s + "-" +(rand(60) + 1).to_s + "-" +(rand(60) + 1).to_s + "-" +(rand(60) + 1).to_s + "-" +(rand(60) + 1).to_s 
    render json: "Your lotto number is #{lotto_number}"
  end

  def traffic_method
    @history = @history + 1
    render json: {views: @history}
  end

  def bottles_of_beer_method
    bottles = 99
    new_array = []
    100.times do 
      new_array << "#{bottles.to_s} bottles of beer on the wall, #{bottles.to_s} bottles of beer. Take one down, pass it around, #{(bottles -1).to_s} bottles of beer on the wall!"
      bottles -= 1
    end 
    render json: new_array
  end
end
