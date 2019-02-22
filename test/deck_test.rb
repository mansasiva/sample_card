require 'minitest/autorun'
require_relative '../lib/deck'

class DeckTest < Minitest::Test

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @card = Card.new("2", "S")
    @deck = Deck.new
  end

  # Test the deal method in the Class Deck
  def test_deal
    result = @deck.deal(3)
    assert_equal(3, result)

    result1 = @deck.deal(5)
    assert_equal(5, result1)

    res = @deck.deal
    assert_equal(1,res)
  end

  # Test the number of cards in the deck
  def test_count
    result = @deck.card_count
    assert_equal(52, result)
  end

  # Test the deck is not empty
  def test_empty
    result = @deck.empty
    assert_equal(false, result)
  end

  def test_deckto_s
    puts "MY DECK OF CARDS"
    puts @deck.to_s
  end

  def test_shuffle
    puts "NO NEED TO TEST ARRAY SHUFFLE"
  end

  def test_cardto_s
    result = @card.to_s
    assert_equal("2S", result)
  end

end