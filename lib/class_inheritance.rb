class User
end

user = User.new

#User クラスのスーパークラスを表示
puts User.superclass

#instance_of? メソッドは、指定したクラスのインスタンスであるかどうかを判定
puts user.instance_of?(User)
puts user.instance_of?(String)

#is_a? メソッドは、指定したクラスまたはそのサブクラスのインスタンスであるかどうかを判定
puts user.is_a?(User)
puts user.is_a?(Object)
puts user.is_a?(BasicObject)
#is-a関係にない場合false
puts user.is_a?(String)


# クラスメソッドの継承
class Foo
  def self.hello
    'hello'
  end
end

class Bar < Foo
end

puts Foo.hello
puts Bar.hello