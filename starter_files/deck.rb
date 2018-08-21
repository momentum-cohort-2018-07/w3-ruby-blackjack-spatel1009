require_relative "card"

class Deck
    attr_accessor :deck
    def initialize
        @deck = []
        @ranks = [:A, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K]
        @suits = [:clubs, :diamonds, :hearts, :spades]

        deck_builder
        shuffle
    end
    def cards
        @deck               
    end
    

    def deck_builder
        @suits.each do |suit|           #builds 52 card deck
            @ranks.each do |rank|
                card = Card.new(rank,suit)
                @deck << card
            end
        end
    end

    def draw
        @deck.shift
    end

    def shuffle
        @deck.shuffle!
    end

    def cards_left
        @deck.length
    end
end