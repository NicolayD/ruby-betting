module RaceBet
  class Race

    class << self
      def score(guesses, winners)
        result = 0
        guesses.each_with_index do |guess, place|
          result += if guess == winners[place] && place == 0
                      15
                    elsif guess == winners[place] && place == 1
                      10
                    elsif guess == winners[place] && place == 2
                      5
                    elsif guess == winners[place] && place == 3
                      3
                    elsif guess == winners[place] && place == 4
                      1
                    elsif winners.include?(guess)
                      1
                    else
                      0
                    end
        end
        result
      end
    end

  end
end