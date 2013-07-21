module Lottery
  module LotteryHelper
    def draw(max = 0, amount = 0)
      [*1..max].sample(amount).sort
    end

    def make_hash(arr1, arr2 = nil)
      { first: arr1, second: arr2 }
    end
  end

  module LotteryPPrint

    def pprint(first_name: 'Numbers', second_name: 'Lucky Numbers')
      printf "%s: %s ", first_name, self[:first]
      if self[:second].nil?
        newline
      else
        printf "%s: %s\n", second_name, self[:second]
      end
    end

    def newline
      puts
    end

  end
end

class Hash
  include Lottery::LotteryPPrint
end