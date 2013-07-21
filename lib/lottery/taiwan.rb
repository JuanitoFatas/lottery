module Lottery
  module Taiwan
    include Lottery::LotteryHelper
    extend self

    # 威力彩
    def super_lotto_638
      make_hash(draw(38, 6), draw(8, 1))
    end

    # 6/49 大樂透
    def lotto_649
      make_hash(draw(49, 6))
    end

  end
end