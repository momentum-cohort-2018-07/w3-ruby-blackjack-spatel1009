puts "TODO Implement the game of blackjack."

# Hint: for starters, read bin/blackjack.rb
class blackjack
    def startGame
        carddeck = Deck.new
        money = 100
        puts "Hello and welcome to the game of blackjack! Let's begin."
        while get_yes_or_no
puts "You have $#{money} and you bet $10"    
hand1 = hand.deal_from(carddeck.deck)    
puts hand1.to_s
puts "Do you want to (h)it or (s)tand? "
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

    