class Card
    attr_accessor :rank, :suit
   
    def initialize (rank, suit)
        @rank = rank
        @suit = suit
    end
    def==(card2)

        self.rank == card2.rank && self.suit == card2.suit
    end

    def value
        value = case @rank
        when :A 
            :ace 
        when 2..10
            @rank
        when :J
            10
        when :Q
            10
        when :K
            10
        end
    end
    def to_s
        "#{@rank}"
    end 

    def greater_than?(other_card)
        self.value > other_card.value
    end
end 