require_relative 'hand'
require_relative 'deck'
puts "TODO Implement the game of blackjack."

# Hint: for starters, read bin/blackjack.rb
class BlackjackGame
  def initialize
    startGame
  end
    def startGame
        @carddeck = Deck.new
        @dealer=Hand.new(@carddeck.cards)
       
        @money = 100
        puts "Hello and welcome to the game of blackjack! Let's begin."
        while get_yes_or_no
          @player= Hand.deal_from(@carddeck.cards)
puts "You have $#{@money} and you bet $10"    
@dealer = Hand.deal_from(@carddeck.deck)    
puts @player.to_s
print "Do you want to (h)it or (s)tand? "
choice = gets.chomp
while choice == "h"
@player.hit (@carddeck.cards)
puts @player.to_s
choice = gets.chomp
end
puts @dealer.to_s
if @player.beats?(@dealer)
  puts "You win"
  @money = @money + 20
else
  puts "You lose"
  @money -= 10
end 
        end
    end

    def get_yes_or_no
        
        # loop until you get a good answer and return
        while true
          print "Please enter (y)es or (n)o: "
          answer = gets.chomp.downcase
          if answer[0] == "y"
            return true
          elsif answer[0] == "n"
            return false
          end
          puts "That is not a valid answer!"
        end
      end
    end 

b = BlackjackGame.new
b.startGame