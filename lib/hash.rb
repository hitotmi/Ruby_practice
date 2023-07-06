# ハッシュを配列に変換
fruits = { apple: '赤', banana: '黄', grape: '紫', orange: 'オレンジ' }
p fruits.to_a

# 配列をハッシュに変換
array = [[:apple, "赤"], [:banana, "黄"], [:grape, "紫"], [:orange, "オレンジ"]]
p array.to_h

# キーがなければhelloを返す
h = Hash.new('hello')
h[:foo] = 'world'

puts h[:foo]
puts h[:bar]
puts h[:baz]

# ％記法でシンボル作成
symbols = %s!apple banana cherry!
p symbols

symbols = %s(apple banana cherry)
p symbols

#シンボルの配列作成
symbols = %i(apple banana cherry)
p symbols