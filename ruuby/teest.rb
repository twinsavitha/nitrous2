class Game
  attr_accessor :name, :year, :system
  attr_reader :created_at
  def initialize(name, options={})
    self.name = name
    self.year = options[:year]
    self.system = options[:system]
    @created_at = Time.now
  end
  def to_s
    self.name
  end
  def description
    puts "#{self.name} was released in #{self.year}."
  end
end
class ConsoleGame < Game
  def to_s
   puts "#{self.name} - #{self.system}"
  end
end
a = ConsoleGame.new("Jin",year: "2015",system: "Jack")
a.to_s
a.description