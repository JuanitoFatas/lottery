require 'thor'

module Lottery
  class Command < Thor
    include Thor::Actions

    def self.source_root
      File.dirname(__FILE__)
    end

    desc 'eu [type]', 'lottery in Europe. type: Not given => Euro Millions, 1: lotto, 2: Thunderball.'
    def eu(which = 0)
      case which.to_i
        when 1 then puts 'Lotto:';      Lottery::Europe.lotto.pprint
        when 2 then puts 'Thunderball'; Lottery::Europe.thunderball.pprint second_name: 'Thunderball number'
        else puts 'Euro Millions';      Lottery::Europe.euro_millions.pprint second_name: 'Lucky Stars'
      end
    end

    desc 'tw [類型]', 'lottery in Taiwan. 類型預設：威力彩。輸入 1 為大樂透。'
    long_desc <<-LONGDESC
    lottery tw 會產生臺灣的樂透號碼。支援威力彩與大樂透。

    lottery tw 預設產生威力彩號碼，你可以輸入 lottery tw 1 來產生大樂透號碼。
    LONGDESC
    def tw(which = 0)
      case which.to_i
        when 1 then puts '6/49 大樂透'; Lottery::Taiwan.lotto_649.pprint first_name: '號碼'
        else puts '威力彩:';            Lottery::Taiwan.super_lotto_638.pprint first_name: '第一區', second_name: '第二區'
      end
    end

    desc 'es', 'lottery in Spain. Default: Daily 6/49, 1: Sunday 5/54+1, 2: Spainsh 6/49.'
    def es(which = 0)
      case which.to_i
        when 1 then puts 'Sunday 5/54+1'; Lottery::Spain.sunday_5_54_plus1.pprint second_name: 'de matrix'
        when 2 then puts 'Spanish 6/49';  Lottery::Spain.spanish_6_49.pprint
        else puts 'Daily 6/49';           Lottery::Spain.daily_6_49.pprint
      end
    end

  end
end