
print "点数 is 書け"

score = gets.to_i

case
when score>=80 then
    puts "優"
when (score>=70 and score<=79) then
    puts "良"
when (score>=60 and score<=69) then
    puts "可"
else
    puts "不可"
end
