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

    # Daily Cash 539
    def daily_cash_539
      make_hash(draw(39, 5))
    end

    def three_stars
      digit_draw
    end

    def four_stars
      digit_draw(4)
    end

    private

    def digit_draw(digits=3)
      ('0' * digits ..'9' * digits).to_a.sample
    end
  end
end