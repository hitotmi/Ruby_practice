# def greet
#   puts 'おはよう'
#   #ブロックに引数を渡し、戻り値を受け取る
#   text = yield 'こんにちは'
#   #ブロックの戻り値をターミナルに出力
#   puts text
#   puts 'こんばんは'
# end


# greet do |text|
#   text * 2
# end

# ブロックをメソッドの引数として受け取る
def greet(&block)
  puts 'おはよう'
  text = block.call('こんにちは')
  puts text
  puts 'こんばんは'
end


greet do |text|
  text * 2
end