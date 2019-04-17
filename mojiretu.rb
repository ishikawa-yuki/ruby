

print "文字列を入力してください"

s=gets.chomp.to_s

i=s.length

mojiretu =Hash.new

mcnt = 0
mchar = ""


s.each_char{|s| 
    if mojiretu.include?(s) then
        mojiretu[s] += 1
    else
        mojiretu[s] = 1
    end
    char = s
    cnt = mojiretu[s]
    if mcnt <= cnt
        if mcnt == cnt
            mchar += "・"+s
        else
            mchar = s
        end
        mcnt = cnt
    end
}


=begin 一旦封印
1.upto(i){|i|
    if mojiretu[]
}
=end


print "もっとも出現頻度が多かった文字は#{mchar}で#{mcnt}回です"

p mojiretu