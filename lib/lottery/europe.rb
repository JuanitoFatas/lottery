module Lottery
  module Europe
    include Lottery::LotteryHelper
    extend self

    def euro_millions
      make_hash(draw(50, 5), draw(11, 2))
    end

    def lotto
      make_hash(draw(49, 6))
    end

    def thunderball
      make_hash(draw(39, 5), draw(14, 1))
    end

  end
end