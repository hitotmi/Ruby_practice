#モジュールに他のモジュールをinclude
module Food
  def eat
    'おいしい!'
  end
end

module Tabemono
  #Foodモジュールをinclude
  include Food

  def sushi
    '寿司を食べる。'
  end
end

class User
  #Tabemonoモジュールをinclude
  #TabemonoモジュールがincludeしているFoodモジュールのメソッドも呼び出せる
  include Tabemono
end

user = User.new

puts user.sushi
puts user.eat



#prependについて
module A
  def to_s
    "A #{super}"
  end
end

class Product
  prepend A

  def to_s
    "Product #{super}"
  end
end


product = Product.new

#prependはミックスインしたクラスよりも先にモジュールからメソッドを検索
p product.to_s
p Product.ancestors