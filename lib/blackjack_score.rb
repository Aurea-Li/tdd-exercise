# blackjack_score.rb

VALID_CARDS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 'King', 'Queen', 'Jack', 'Ace']

def blackjack_score(hand)

  score = 0
  hand.each do |card|

    unless VALID_CARDS.include?(card)
      raise ArgumentError, 'Invalid card'
    end

    if card == 'King' || card == 'Queen' || card == 'Jack'
      score += 10

    elsif card == 'Ace'
      # Add 11 if possible, otherwise add 1
      if score + 11 > 21
        score += 1
      else
        score += 11
      end

    else
      score += card
    end
  end

  return score
end
