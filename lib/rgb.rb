# frozen_string_literal: true

def to_hex(r, g, b)
  [r, g, b].sum('#') do |n|
    n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  [r, g, b].map(&:hex)
end

# def to_ints(hex)
#   # scanメソッドは、正規表現に一致する文字列を配列として返す
#   hex.scan(/\w\w/).map(&:hex)
# end
