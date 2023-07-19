require 'rspec'
require_relative '../lib/rgb'

RSpec.describe 'RGB変換プログラムのテスト' do
  describe '#to_hex' do
    it 'RGBを16進数に変換する' do
      expect(to_hex(0, 0, 0)).to eq('#000000')
      expect(to_hex(255, 255, 255)).to eq('#ffffff')
      expect(to_hex(60, 179, 113)).to eq('#3cb371')
    end
  end

  describe '#to_ints' do
    it '16進数をRGBに変換する' do
      expect(to_ints('#000000')).to eq([0, 0, 0])
      expect(to_ints('#ffffff')).to eq([255, 255, 255])
      expect(to_ints('#3cb371')).to eq([60, 179, 113])
    end
  end
end