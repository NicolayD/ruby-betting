module RaceBet
  class Race

    class << self
      def score(guesses, winners)
        result = 0
        guesses.each_with_index do |guess, place|
          result += 15 if guess == winners[place] && place == 0
          result += 10 if guess == winners[place] && place == 1
          result += 5 if guess == winners[place] && place == 2
          result += 3 if guess == winners[place] && place == 3
          result += 1 if guess == winners[place] && place == 4
          result += 1 if winners.include?(guess) && place != winners.index(guess)
        end
        result
      end
    end

  end
end