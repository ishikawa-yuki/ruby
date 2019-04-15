name = "ishikawa"

puts"hello from " + name
age = 21
puts "私は"+age.to_s+"歳です"
puts "私は#{age}歳です"
=begin
puts name
puts age
=end
#puts addres
n = 1 + 2+ 3
puts n

n1 = 10
n2 = 3
ans = n1 / n2
puts ans
puts ans.class
puts "--- 多重代入"
num1, *num2 = 10, 20, 30
p num1, num2
puts "p31 論理演算子 p34 優先度（補足）"
a=10
b=-10
c=0
puts (a > 0 || b > 0 && c > 0)
puts (a > 0 || b > 0 and c > 0)

print "点数書いて"

score = gets.to_i

if score>=80 then
    puts "優"
elsif score>=70 and score<=79
    puts "良"
elsif score>=60 and score<=69
    puts "可"
else
    puts "不可"
end
