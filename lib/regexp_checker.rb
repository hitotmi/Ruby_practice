# frozen_string_literal: true

print 'Text?: '
text = gets.chomp

# 例外処理のブロック
begin
  print 'Pattern?: '
  pattern = gets.chomp
  regexp = Regexp.new(pattern)
rescue RegexpError => e # 正規表現の作成中に例外が発生した場合に実行する処理
  puts "Invalid pattern: #{e.message}"
  retry # 再度beginから処理をやり直し
end

matches = text.scan(regexp)
if matches.size.positive?
  puts "Matched: #{matches.join(', ')}"
else
  puts 'Nothing matched.'
end
