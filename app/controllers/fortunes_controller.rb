class FortunesController < ApplicationController
  def horoscopes
    @the_sign = params["the_sign"].to_sym
    all_zodiacs = Zodiac.list
    @horoscope = all_zodiacs[@the_sign][:horoscope]

    @rand_array = Array.new
    5.times do
      @rand_array.push(rand(1...100))
    end
    render({ :template => "zodiac_templates/zodiac.html.erb" })
  end
end
