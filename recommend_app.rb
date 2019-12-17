#今日のご飯を提案するコード 配列使いまくります。
  first = [
  '今日のおすすめご飯を紹介するよ！',
  '今日のご飯に困っている君を助けるよ！',
  '『今日何食べたい？』に困っているかい？僕にまかせてよ！',
  '一緒に何を食べるのか決めようよ！',
  '君にぴったりなご飯を見つけるよ！']
  last = [
  '今日も美味しいご飯たべましょう！',
  '今日はいいご飯日和だよ！',
  'いつでも僕を頼りにしてね！',
  "使用料金は10000円です\n\n\n\n\n\n嘘だよ！",
  '君のご飯にカンパイ！'
  ]
  def turn
    puts "まだ繰り返す？\n[1]はい\n[2]いいえ"
    input = gets.to_i
    if input == 1
      puts choice
    else
      puts "ばいばーーーーい！"
      exit
    end
  end
  def choice
    genre = ['和食','洋食','中華','危険']
    japanese = ['お寿司', '肉じゃが' , '鯖の味噌煮', 'とんかつ','しゃぶしゃぶ','温玉うどん','お蕎麦']
    western = ['オムライス' , 'ハンバーグ' , 'グラタン' , 'パスタ' , 'ステーキ' , 'ピザ' ,'インドカレー']
    chinese = ['ラーメン' , '青椒肉絲' , '餃子' , '麻婆豆腐' , 'エビチリ' , 'チャーハン' , '酢豚']
    dangerous = ['サソリ' , 'くさや' , 'カース・マルツゥ' , 'コウモリスープ']
  genre.each_with_index do | g , i |
    i = i + 1
    puts "[#{i}]#{g}"
  end
    input = gets.to_i
  if input == 1
    puts "今日のおすすめご飯は#{japanese.sample}です！"
    turn
    elsif input == 2
      puts "今日のおすすめは~#{western.sample}で~す！"
      turn
    elsif input == 3
      puts "今日のおすすめ、それは。。。#{chinese.sample}です！"
      turn
    elsif input == 4
      puts "挑戦者よ。。。おすすめは。。。#{dangerous.sample}。。。"
      turn
  end
end
while true
  puts first.sample
  puts '[1]ありがとう！or[2]結構です！'
  select = gets.to_i
    if select == 1
      puts '下から気になるジャンルを選んでね！'
      puts choice
    else
      puts last.sample
      sleep 2
      puts 'ばいばーーーい！'
      exit
    end
  end
