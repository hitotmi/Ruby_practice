# =~を使ってマッチしたか判別
if '123-4567' =~ /\d{3}-\d{4}/
  puts 'マッチしました'
else
  puts 'マッチしませんでした'
end


# キャプチャに名前を付ける
text = '私の誕生日は1234年1月23日です'

m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)
p m[:year]
p m[:month]
p m[:day]
p m[2]

