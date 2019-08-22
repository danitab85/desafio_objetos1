class Card
  attr_reader :suits, :number
  def initialize
    @number = (1..13).to_a.sample
    @suits = %I[diamond spade hearts clubs].sample
  end
end

class Player
  attr_reader :hand
  def initialize
    play
  end

  def play
    @hand = []
    5.times{@hand << Card.new}
  end

  def show_hand
    @hand.each do |card|
      puts "#{card.number} de #{card.suits.capitalize}"
    end
    return nil
  end
end
