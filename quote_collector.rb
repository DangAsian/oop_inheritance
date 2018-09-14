require_relative 'multilinguist'

class QuoteCollector < Multilinguist

  def initialize()
    @memorize = []
  end

  def travel_to(c)
    super(c)
  end

  def say_in_local_language(e)
    quote = super(e)
    @memorize << quote
  end

  def memorize
    return @memorize
  end

  def return_the_quote(number)
    quote = @memorize[number]
    # puts quote
    puts say_in_local_language(quote)
  end



end


person1 = QuoteCollector.new
# puts person1.inspect


person1.say_in_local_language("Roses are red and violets are blue")
person1.say_in_local_language("Just do it")


person1.travel_to("Italy")
person1.return_the_quote(0)
