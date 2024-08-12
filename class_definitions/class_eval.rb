# Module#class_eval は self とカレントクラスを変更する
# class_eval はクラス定義にメソッドを追加するために使われる
def add_method_to(a_class)
  a_class.class_eval do
    def m; 'Hello!'; end
  end
end

add_method_to String
"abc".m #=> "Hello!"