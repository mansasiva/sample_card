# File: deck.rb
# Class Deck and the method to deal, count, shuffle the deck of 52 cards
# @card_rank is an array to store all the ranks of card A, 2..10, J, Q, K
# @card_suite is an array to store all the suite of card Club(C), Spade(S), Diamond(D) and Heart(H)
# rank and suit are combined to form the 52 cards
# @card is an array to hold cards created by combining rank and suite

class Deck

  def initialize
    @card_rank = ['A', *(2..10), 'J', 'Q', 'K']
    @card_suite = ['S', 'H', 'C', 'D']
    @card = Array.new

    @card_rank.each {|r|
      @card_suite.each {|s|
        @card << Card.new(r, s)
      }
    }

    # method returns false if the deck is not empty
    def empty
      @card.empty?
    end

    # method returns the number of cards in the deck
    def card_count
      @card.count
    end

    # method returns shuffled deck
    def shuffle
      @card.shuffle!
    end

    # method to deal the card
    # using array shift method
    # shift method removes the first element in the array
    # and returns it and shifting all other elements by 1
    def deal(num_cards_to_deal = 1)
      puts "THE CARDS DEALT"
      num_cards_to_deal.times {
        @card.shift
        puts "#{@card.shift}"
      }
    end

    # overridden to_s method
    def to_s
      result = ''
      @card.each do |card|
        result = result + card.to_s + "\n"
      end
      result
    end
  end

end


# File: deck.rb
# Class Card and the method to put the name of the card
# @rank card rank
# @suite card suite

class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  # overridden to_s method
  def to_s
    "#{@rank}#{@suit}"
  end

end