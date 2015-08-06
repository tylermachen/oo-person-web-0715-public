class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  MAX_POINTS = 10
  MIN_POINTS = 0

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def hygiene=(points)
    @hygiene = validate(points)
  end

  def happiness=(points)
    @happiness = validate(points)
  end

  def get_paid(salary)
    self.bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    case topic
      when 'politics'
        self.happiness -= 2
        person.happiness -= 2
        "blah blah partisan blah lobbyist"
      when 'weather'
        self.happiness += 1
        person.happiness += 1
        "blah blah sun blah rain"
      else
        "blah blah blah blah blah"
    end
  end

  private

  def validate(points)
    case
      when points > MAX_POINTS then MAX_POINTS
      when points < MIN_POINTS then MIN_POINTS
      else points
    end
  end
end
