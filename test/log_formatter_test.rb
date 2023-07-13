require 'minitest/autorun'
require_relative '../lib/log_formatter'

class LogFormatterTest < Minitest::Test
  def test_format_log
    text = LogFormatter.format_log
    #linesメソッドは文字列を行単位ごとで配列に変換するメソッド
    #chomp: trueをつけると改行文字が削除される
    lines = text.lines(chomp: true)
    assert_equal '[OK] request_id=1, path=/products/1', lines[0]
  end
end