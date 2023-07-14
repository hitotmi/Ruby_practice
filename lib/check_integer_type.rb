def check_value(val)
  #パターンにマッチし、かつ条件式も真になった場合にin節に対応する処理を実行
  case val
  in Integer if val.even?
    "偶数の整数です"
  in Integer if val.odd?
    "奇数の整数です"
  else
    "整数ではありません"
  end
end

puts check_value(20)
puts check_value(15)
puts check_value("20")
