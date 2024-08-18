# eval メソッドはコードインジェクションのリスクがある
# コードインジェクションとは、ユーザーが入力した文字列をそのまま実行することで、
# 悪意のあるコードを実行されるリスクがあることを指す
# 例えば、次のコードで以下のように入力したとする
# object_id; Dir.glob("*")
# この場合、object_id メソッドの結果と、カレントディレクトリのファイル一覧が表示される
def explore_array(method)
  code = "['a', 'b', 'c'].#{method}"
  puts "Evaluating: #{code}"
  eval code
end

loop { p explore_array(gets.chomp) }
