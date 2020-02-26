class Acronym
  def self.acronym(name)
    data = name.split.map { |word| word[0].capitalize  }.join

    puts "Acronym for #{name} : #{data}"
  end
end

Acronym.acronym('data Scientist')

puts  Symbol.all_symbols