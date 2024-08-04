# ブロック内で定義された変数はブロック外からは参照できない
def just_yield
  yield
end

top_level_variable = 1

just_yield do
  top_level_variable += 1
  local_to_block = 1 # ブロック内で定義された変数
end

p top_level_variable # => 2
p local_to_block # => NameError