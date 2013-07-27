require 'thor'

module Lottery
  class Command < Thor
    package_name "Lottery"

    desc 'eu [type]', 'lotteries in Europe. Including Euro Millions, Lotto, and Thunderball.'
    long_desc <<-EU_LONGDESC
    $ lottery eu

      generates European lottery numbers. Support Euro Millions, Lotto and Thunderball.

    $ lottery eu will generate Euro Millions numbers.

    $ lottery eu 1 will generate Lotto numbers.

    $ lottery eu 2 will generate Thunderball numbers.
    EU_LONGDESC
    def eu(which = 0)
      case which.to_i
        when 1 then puts 'Lotto:';       Lottery::Europe.lotto.pprint
        when 2 then puts 'Thunderball:'; Lottery::Europe.thunderball.pprint second_name: 'Thunderball number'
        else puts 'Euro Millions:';      Lottery::Europe.euro_millions.pprint second_name: 'Lucky Stars'
      end
    end

    desc 'tw [type]', 'Lotteries in Taiwan. Including Lotto649, SuperLotto638, and Daily Cash.'
    long_desc <<-LONGDESC
    $ lottery tw

      generates Taiwanese Lottery numbers. Support SuperLotto638, Lotto649, and Daily Cash.

    $ lottery tw will generate SuperLotto638 numbers.

    $ lottery tw 1 will generate Lotto649 numbers.

    $ lottery tw 2 will generate Daily Cash numbers.
    LONGDESC
    def tw(which = 0)
      case which.to_i
        when 1 then puts '6/49 Lotto:';     Lottery::Taiwan.lotto_649.pprint
        when 2 then puts 'Daily Cash 539:'; Lottery::Taiwan.daily_cash.pprint
        else puts 'Super Lotto 638:';       Lottery::Taiwan.super_lotto_638.pprint first_name: '1st zone', second_name: '2nd zone'
      end
    end

    desc 'es', 'lotteries in Spain. Including Daily 6/49, Sunday 5/54+1, and Spainsh 6/49.'
    long_desc <<-ES_LONGDESC
      generates Spanish Lottery numbers. Support Daily 6/49, Sunday 5/54+1, and Spainsh 6/49.

    $ lottery es will generate Daily 6/49 numbers.

    $ lottery es 1 will generate Sunday 5/54+1 numbers.

    $ lottery es 2 will generate Spainsh 6/49 numbers.
    ES_LONGDESC
    def es(which = 0)
      case which.to_i
        when 1 then puts 'Sunday 5/54+1:'; Lottery::Spain.sunday_5_54_plus1.pprint second_name: 'de matrix'
        when 2 then puts 'Spanish 6/49:';  Lottery::Spain.spanish_6_49.pprint
        else puts 'Daily 6/49:';           Lottery::Spain.daily_6_49.pprint
      end
    end

  end
end