require_relative "prisoner"

class Prison
  def initialize
    @prisoners = []
  end

  def run
    loop do
      puts "\n"
      puts "Welcome to the Prison"
      puts "1. Add a Prisoner"
      puts "2. Get List of Prisoners"
      puts "3. Exit"
      print "Type your chosen option below: "

      choice = gets.chomp.to_i
      puts "\n"

      case choice
      when 1
        add_prisoner
      when 2
        all_prisoners
      when 3
        puts "Exiting the prison database"
        break
      else
        puts "Please try one of the given options"
      end
    end
  end

  private

  def add_prisoner
    print "What is the prisoner's name?"
    name = gets.chomp
    print "What crime did the prisoner commit?"
    crime = gets.chomp
    @prisoners << Prisoner.new(name, crime)
    puts "Prisoner added to database"
  end

  def all_prisoners
    puts "Here is a list of all the prisoners and their crimes:"
    @prisoners.each do |prisoner|
      puts prisoner
    end
  end
end
