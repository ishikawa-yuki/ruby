=begin
入力した文字列から出現頻度がもっとも多い文字と出現した回数を表示する
=end
print "文字列を入力してください"

s=gets.chomp

mojiretu =Hash.new

mcnt = 0
mchar = ""

s.each_char{|s| 
    if mojiretu.include?(s) then
        mojiretu[s] += 1
    else
        mojiretu[s] = 1
    end
    if mcnt < mojiretu[s]
        mcnt = mojiretu[s]
        mchar = s
    else
        if mcnt == mojiretu[s]
            mchar += "・"+s
        end
    end
}

print "もっとも出現頻度が多かった文字は#{mchar}で#{mcnt}回です"

p mojiretu