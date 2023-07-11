# Procオブジェクトの作成
my_proc = Proc.new { |x| x * 2 }

#Procオブジェクトを実行したい場合はcallメソッドを使う
puts my_proc.call(5)


# Procオブジェクトを引数として渡す
def execute_proc(proc_object)
  proc_object.call
end

hello_proc = Proc.new { puts 'ハロー!' }
execute_proc(hello_proc)
