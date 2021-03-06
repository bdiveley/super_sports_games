class Event
  attr_reader :name, :ages

  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    p @ages.sort[-1]
  end

  def min_age
    p @ages.sort[0]
  end

  def average_age
    p (@ages.sum / @ages.length.to_f).round(2)
  end

  def standard_deviation_age
    average_of_ages = (@ages.sum / @ages.length.to_f).round(2)

    ages_less_average = []
    @ages.each do |age|
      ages_less_average << (age - average_of_ages).round(2)
    end

    ages_squared = []
    ages_less_average.each do |age_less_ave|
      ages_squared <<  (age_less_ave ** 2).round(2)
    end

    average_of_squared = ages_squared.sum / @ages.length
    p Math.sqrt(average_of_squared).round(2)
  end

end
