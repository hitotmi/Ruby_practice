# frozen_string_literal: true

# Procオブジェクトの作成
my_proc = proc { |x| x * 2 }

# Procオブジェクトを実行したい場合はcallメソッドを使う
puts my_proc.call(5)

# Procオブジェクトを引数として渡す
def execute_proc(proc_object)
  proc_object.call
end

hello_proc = proc { puts 'ハロー!' }
execute_proc(hello_proc)

# Proc.newの作成と実行
add_proc = proc { |a, b| a + b }
puts add_proc.call(10, 20)
puts add_proc.yield(10, 20)
puts add_proc.call(10, 20)
puts add_proc[10, 20]
puts add_proc === [10, 20]
puts add_proc.lambda? #=>false

# ランダの作成と実行
add_lambda = ->(a, b) { a + b }
puts add_lambda.call(10, 20)
puts add_lambda.lambda? #=>true

def welcome(&block)
  puts 'Hello'
  text = block.call('Welcome here')
  puts text
  puts 'Goodbye'
end

# 引数のテキストを大文字に変換する Proc オブジェクトを作成
upcase_proc = proc { |text| text.upcase }
# Proc オブジェクトをブロックとして welcome メソッドに渡す
welcome(&upcase_proc)
