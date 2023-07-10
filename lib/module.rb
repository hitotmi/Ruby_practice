module Log
  def log(action)
    puts "[ログ] #{action}"
  end
end

class Vehicle
  #Logモジュールのlogメソッドを追加。logメソッドを直接呼び出すことができる。
  #モジュールをクラスにincludeして機能を追加することを「ミックスイン」という。
  include Log

  def drive
    log '車を運転中'
    '車は移動中です'
  end
end

class Person
  include Log

  def walk
    log '散歩中'
    '健康意識'
  end
end

vehicle = Vehicle.new
puts vehicle.drive

person = Person.new
puts person.walk