require 'dbi'

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

dbh = DBI.connect('DBI:SQLite3:test_kekka.db')


while(1)do

    puts "行う操作を入力してください"
    puts "0:データの入力"
    puts "1:結果の表示"
    puts "2:終了"
    st = gets.chomp.to_i

    if 0 <= st and st <= 2 
        if st == 0
            puts "テストを受ける人数を決めます"
            while(1)do
                puts "人数を入力してください"
                i = gets.to_i

                puts "#{i}人分の氏名・テスト１の得点・テスト２の得点を入力します"
                print "よろしいですか？"

                while(1)do
                    puts "  (はい)y/n(いいえ)"
                    taku = gets.chomp
                    p taku
                    if taku == "y" or taku == "n"
                        break
                    else
                        print "入力が正しくありません。yかをn入力してください"
                    end
                end
                if taku == "y"
                    break
                end
            end
            i.times{|n|
                puts "#{n+1}人目の氏名を入力してください"
                st = gets.chomp
                puts "1つ目のテストの点数を入力してください"
                t1 =gets.to_i
                t1h = hyouka(t1)
                puts "２つ目のテストの点数の入力をしてください"
                t2 =gets.to_i
                t2h = hyouka(t2)
                dbh.do("INSERT INTO test_kekka(id, name, test1, test1_hyouka, test2, test2_hyouka) VALUES(?,?,?,?,?,?)",n,st,t1,t1h,t2,t2h)
            }
        end


        if st == 1
            puts "\n得点は"

            dbh.select_all('select * from test_kekka')do|td|
                puts "#{td[1]}はテスト１が#{td[2]}(#{td[3]})、テスト2が#{td[4]}(#{td[5]})です。"
            end

            dbh.select_all('select sum(test1),sum(test2),round(avg(test1),-1),round(avg(test2),-1) from test_kekka')do|td|
                puts "合計点はテスト１が#{td[0]}でテスト２が#{td[1]}です"
                puts "平均点はテスト１が#{td[2]}でテスト２が#{td[3]}です"
            end
            puts ""
        end
        if st == 2
            break
        end
    end
end