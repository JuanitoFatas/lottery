require 'thor'

module Lottery
  class Command < Thor
    include Thor::Actions

    def self.source_root
      File.dirname(__FILE__)
    end

    desc 'eu', 'lottery in Europe. Default: Euro Millions, 1: lotto, 2: Thunderball.'
    def eu(which=0)
      case which.to_i
        when 1 then puts 'Lotto:';      Lottery::Europe.lotto.pprint
        when 2 then puts 'Thunderball'; Lottery::Europe.thunderball.pprint second_name: 'Thunderball number'
        else puts 'Euro Millions';      Lottery::Europe.euro_millions.pprint second_name: 'Lucky Stars'
      end
    end

    desc 'tw', 'lottery in Taiwan. 預設：威力彩。1: 大樂透。'
    def tw(which=0)
      case which.to_i
        when 1 then puts '6/49 大樂透'; Lottery::Taiwan.lotto_649.pprint first_name: '號碼'
        else puts '威力彩:';            Lottery::Taiwan.super_lotto_638.pprint first_name: '第一區', second_name: '第二區'
      end
    end

    desc 'es', 'lottery in Spain. Default: Daily 6/49, 1: Sunday 5/54+1, 2: Spainsh 6/49.'
    def es(which=0)
      case which.to_i
        when 1 then puts 'Sunday 5/54+1'; Lottery::Spain.sunday_5_54_plus1.pprint second_name: 'de matrix'
        when 2 then puts 'Spanish 6/49';  Lottery::Spain.spanish_6_49.pprint
        else puts 'Daily 6/49';           Lottery::Spain.daily_6_49.pprint
      end
    end

  end
end