module Lottery
  module Taiwan
    include Lottery::LotteryHelper
    extend self

    # SuperLotto638
    def super_lotto_638
      make_hash(draw(38, 6), draw(8, 1))
    end

    # Lotto649
    def lotto_649
      make_hash(draw(49, 6))
    end

    # Daily Cash
    def daily_cash
      make_hash(draw(39, 5))
    end

  end
end