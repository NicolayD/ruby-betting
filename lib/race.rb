module RaceBet
  class Race
    @@points = [ 15, 10, 5, 3, 1 ]

    class << self
      def score(guesses, winners)
        result = 0
        winners.each_with_index do |winner, place|
          if winner == guesses[place]
            result += @@points[place]
          elsif winners.include? guesses[place]
            result +=1
          end
        end
        result
      end
    end

  end
end
