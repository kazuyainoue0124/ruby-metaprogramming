class String
  def to_alphameric
    gsub(/[^\w\s]/, '')
  end
end
