module Effects
  #文字列を反転するエフェクトを生成
  def self.reverse
    ->(words) do
      words.split(' ').map(&:reverse).join(' ')
    end
  end
  
  #指定された回数だけ文字を繰り返すエフェクトを生成
  def self.echo(rate)
    ->(words) do
      #スペースならそのまま返す
      #スペース以外ならその文字を指定された回数だけ繰り返す
      words.each_char.map { |c| c == ' ' ? c : c * rate }.join
    end
  end
  

  #文字列を大文字にし、各単語の末尾に感嘆符を指定された回数だけ追加するエフェクトを生成
  def self.loud(level)
    ->(words) do
      words.split(' ').map { |word| word.upcase + '!' * level }.join(' ')
    end
  end
end