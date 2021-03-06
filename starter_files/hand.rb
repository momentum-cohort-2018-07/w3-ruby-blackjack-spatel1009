class Hand
    def self.deal_from(deck)
        Hand.new (deck.pop(2))     #takes 2 cards from deck to create new hand
    end 
    def initialize (cards)
        @cards = cards
    end 
    def points
        points_count=0
        ace = 0
        @cards.each do |card|
            case card.value
            when :ace
                points_count += 11
                ace += 1
            else 
                points_count += card.value
            end 
        end
        ace.times do
            points_count -= 10 if points_count > 21
        end 
        points_count
    end 
    def busted?
        points > 21
    end
    def hit(deck)
        @cards.concat(deck.pop(1))
    end
    def beats?(other_hand)
        return false if self.busted?
        if other_hand.busted?
            return true
        end 
        if self.points > other_hand.points
            return true
        end 
        return false
    end 
    def to_s
        puts "You now have a #{@cards.join(",")} in your hand.  Your total is #{points}"          #p = prints
        
end
end
