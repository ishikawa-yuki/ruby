
print "一つ目"

x = gets.to_i

print "二つ目"

y = gets.to_i

while(1)
    if x >= y then
        x = x%y
    else
        y = y%x
    end
    if x==0 then
        puts "最大公約数は" + y.to_s + "です"
        break
    elsif y==0 then
        puts "最大公約数は" + x.to_s + "です"
        break
    end
end