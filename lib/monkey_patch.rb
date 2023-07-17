# frozen_string_literal: true

class User
  def initialize(name, _email)
    @name = name
  end

  def hello
    "Hello, my name is #{@name}."
  end
end

user = User.new('Alice', 'alice@example.com')
puts user.hello

# Userクラスに対するモンキーパッチを適用して、helloメソッドを上書き
class User
  def hello
    "#{@name}さん、こんにちは！！"
  end
end

# 上書きしたhelloメソッドを呼び出して結果を表示
puts user.hello
