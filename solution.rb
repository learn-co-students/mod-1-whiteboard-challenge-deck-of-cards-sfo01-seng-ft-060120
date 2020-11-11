class Deck

    def initialize()
        @cards = self.create_cards
    end

    def create_cards
        rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
        deck = []
        52.times do
            deck << Card.new(suit.sample, rank.sample)
        end
        deck
    end

    def cards
        @cards
    end

    def choose_card
        @cards.delete_at(rand(0...@cards.length))
    end
end

class Card

    def initialize(suit, rank)
        @rank = rank
        @suit = suit
    end

    def rank
        @rank
    end

    def suit
        @suit
    end
end
