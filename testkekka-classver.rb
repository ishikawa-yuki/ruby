=begin
１０人分の名前・テスト１の点数と評価・テスト２の点数と評価を出す
その後全体の合計点と平均点を出す（科目ごと）
=end
def hyouka(tensu)
    case tensu
      when 80..100
        hk = "優"
      when 60..79
        hk = "良"
      when 40..59
        hk = "可"
      else
        hk = "不可"
    end
    return hk
end

class TestResult
    attr_accessor :name, :test1, :test2
    def initialize(name,test1,test2)
        @student = name
        @test1 = test1
        @test2 = test2
    end
end
test = []
gkt1 = 0
gkt2 = 0

10.times{|n|
    puts "氏名を入力してください"
    st = gets.chomp
    puts "1つ目のテストの点数を入力してください"
    t1 =gets.to_i
    puts "２つ目のテストの点数の入力をしてください"
    t2 =gets.to_i
    kekka = TestResult.new(st,t1,t2)
    test.push(kekka)
    gkt1 += t1 
    gkt2 += t2
}

test.each{|kk|
    puts "#{kk.name}はテスト１は#{kk.test1}点で評価は#{hyouka(kk.test1)}です。テスト２は#{kk.test2}点で#{hyouka(kk.test2)}です。"
}

puts "合計点はテスト１が#{gkt1}点、テスト２が#{gkt2}点です"
puts "平均点はテスト１が#{gkt1/10}点、テスト２が#{gkt2/10}点です"