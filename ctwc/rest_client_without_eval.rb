POSSIBLE_VERS = ['get', 'put', 'post', 'delete']

# REST Client という gem の実装を模倣
# eval を使っているので、コードインジェクションのリスクがある
POSSIBLE_VERS.each do |m|
  eval <<-end_eval
    def #{m}(path, *args, &b)
      r[path].#{m}(*args, &b)
    end
  end_eval
end

# eval を使わずに同じことを実現
POSSIBLE_VERS.each do |m|
  define_method m do |path, *args, &b|
    r[path].send(m, *args, &b)
  end
end
