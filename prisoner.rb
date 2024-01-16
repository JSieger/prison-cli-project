class Prisoner
  attr_accessor :name, :crime

  def initialize(name, crime)
    @name = name
    @crime = crime
  end

  def to_s
    "#{@name} committed crime of #{@crime}"
  end
end
