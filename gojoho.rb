＝begin
ユークリッドの互除法を用いて最大公約数をだす
=end
print "一つ目"

x = gets.to_i

print "二つ目"

y = gets.to_i

while(x>=1 and y>=1)
    if x >= y then
        x = x % y
    else
        y = y % x
    end
end

if x==0 then
    puts "最大公約数は" + y.to_s + "です"
else
    puts "最大公約数は" + x.to_s + "です"
end