# frozen_string_literal: true

# #クラス変数
# #@@nameのように変数名の最初に@を2つけると、そのクラスとそのサブクラスのインスタンス間で値を共有できる。
class Product
  @@name = 'Product'

  def self.name
    @@name
  end

  def initialize(name)
    @@name = name
  end

  def name
    @@name
  end
end

class DVD < Product
  @@name = 'DVD'

  def self.name
    @@name
  end

  def upcase_name
    @@name.upcase
  end
end

# DVDクラスを定義した時に@@nameがDVDに変更される
puts Product.name
puts DVD.name

Product.new('movie')
puts Product.name

# Product.newの時に@@nameがmovuieに変更される
puts Product.name
puts DVD.name
