

1.upto(100){|i|

case
when (i%15 == 0)
    print i
    puts " FIZZBUZZ"
when (i%5 == 0)
    print i
    puts " buzz"
when (i%3 == 0)
    print i
    puts " fizz"
end
}