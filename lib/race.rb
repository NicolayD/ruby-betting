module RaceBet
  class Race

    class << self
      def score(guesses, winners)
        result = 0
        guesses.each_with_index do |guess, position|
          result += 15 if guess == winners[position] && position == 0
          result += 10 if guess == winners[position] && position == 1
          result += 5 if guess == winners[position] && position == 2
          result += 3 if guess == winners[position] && position == 3
          result += 1 if guess == winners[position] && position == 4
          result += 1 if winners.include?(guess) && position != winners.index(guess)
        end
        result
      end
    end

  end
end
