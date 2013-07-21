module Lottery
  module Spain
    include Lottery::LotteryHelper
    extend self

    # Sunday 5/54+1
    # numbers + de matrix
    # http://www.elgordo.com/shop/tg-play-sunday-554.asp
    def sunday_5_54_plus1
      make_hash(draw(49, 5), draw(11, 1))
    end

    # Spanish 6/49
    # http://www.elgordo.com/shop/shoplottosen.asp
    def spanish_6_49
      make_hash(draw(49, 6))
    end


    # Daily 6/49
    # http://www.elgordo.com/shop/tb-play-daily-649.asp
    def daily_6_49
      make_hash(draw(49, 6))
    end

  end
end