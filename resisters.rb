class ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def self.value(colors)
    resistance = colors.take(2).map { |color|  COLORS.index(color.downcase).to_s } .join.to_i
    puts resistance
  end
end
ResistorColorDuo.value(%w(green brown red))
