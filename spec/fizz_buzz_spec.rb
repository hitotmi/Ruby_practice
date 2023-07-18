require 'spec_helper'
require_relative '../lib/fizz_buzz'

describe 'FizzBuzz' do
  context '数字が3と5で割り切れる場合' do
    it '「Fizz Buzz」と表示される' do
      expect(fizz_buzz(15)).to eq 'Fizz Buzz'
    end
  end

  context '数字が3で割り切れる場合' do
    it '「Fizz」と表示される' do
      expect(fizz_buzz(3)).to eq 'Fizz'
    end
  end

  context '数字が5で割り切れる場合' do
    it '「Buzz」と表示される' do
      expect(fizz_buzz(5)).to eq 'Buzz'
    end
  end

  context '数字が5でも3でも割り切れない場合' do
    it '数値そのものを文字列として返す' do
      expect(fizz_buzz(2)).to eq '2'
    end
  end

end