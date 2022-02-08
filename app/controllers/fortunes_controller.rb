class FortunesController < ApplicationController
  def horoscopes
    @sign = params.fetch("the_sign")
    zodiac = Zodiac.list.fetch(@sign.to_sym)
    @horoscope = zodiac.fetch(:horoscope)

    @array_of_numbers = Array.new
    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end
    
    render({ :template => "/horoscope_template.html.erb" })
  end
end