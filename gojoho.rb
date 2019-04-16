=begin
ユークリッドの互除法を用いて最大公約数をだす
=end

def keisan(a,b)
    while(a>=1 and b>=1)
        if a >= b then
            a = a % b
        else
            b = b % a
        end
    end
    if a==0 then
        return b
    else
        return a
    end
end

print "一つ目の値"

x = gets.to_i

print "二つ目の値"

y = gets.to_i

ans = keisan(x,y)

puts "最大公約数は" + ans.to_s + "です"

