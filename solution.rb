require 'pry'

class Deck
  attr_accessor :cards
  
  def initialize
    self.cards = []

    ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    suits = ["Hearts", "Clubs", "Diamonds", "Spades"]

    ranks.each do |rank|
      suits.each do |suit|
        cards << Card.new(suit, rank)
      end
    end
  end

  def choose_card
    card = self.cards.sample
    self.cards.delete(card)
    # binding.pry
    return card
  end
end

class Card
  attr_accessor :rank, :suit

  def initialize(suit, rank)
    self.suit, self.rank = suit, rank
  end
end
