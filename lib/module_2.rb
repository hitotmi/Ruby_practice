#モジュールを利用した名前空間
module Food
  # Foodモジュールに属するChocolateクラス
  class Chocolate
    attr_reader :type

    def initialize(type)
      @type = type
    end
  end
end

module Color
  # Colorモジュールに属するChocolateクラス
  class Chocolate
    attr_reader :shade

    def initialize(shade)
      @shade = shade
    end
  end
end

chocolate_food = Food::Chocolate.new('Dark')
chocolate_color = Color::Chocolate.new('Brown')

puts chocolate_food.type
puts chocolate_color.shade


#入れ子の有無
module Baseball
  class File
  end

  class Second
    def file_with_nesting
      #入れ子ありのクラス定義でFileクラスを参照
      puts File
    end
  end
end

class Baseball::Second
  def file_without_nesting
    #入れ子なしのクラス定義でFileクラスを参照
    puts File
  end
end

second = Baseball::Second.new
# Baseballモジュール内部のFileクラスを出力
second.file_with_nesting

# Rubyの組み込みFileクラスを出力
second.file_without_nesting