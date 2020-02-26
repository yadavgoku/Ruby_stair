class TwoFer
  def initialize(name = "you")
    @name = name
  end
  def two_fer
    if @name
      puts "One for #{@name} and one for me"
    end
  end
end


obj = TwoFer.new("yadu")
obj.two_fer()