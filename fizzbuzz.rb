=begin
1から100まで数値を出し、３の倍数ならFIZZ、５の倍数ならBUZZ
１５の倍数ならFIZZBUZZを表示する
=end
1.upto(100){|i|

case
when (i%15 == 0)
    print i
    puts " FIZZBUZZ"
when (i%5 == 0)
    print i
    puts " BUZZ"
when (i%3 == 0)
    print i
    puts " FIZZ"
else puts i
end
}