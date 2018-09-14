require_relative 'multilinguist'

class MathGenius < Multilinguist

  def initialize

  end

  def travel_to(c)
    super(c)
  end

  def say_in_local_language(e)
    super(e)

  end

  def report_total(array)
    total_number = 0
    array.each do |number|
      total_number += number
    end
    say_in_local_language("The total is #{total_number}")
  end

end
