class Array
  def my_each
    return dup.to_enum unless block_given?

    i = 0

    while i < size
      yield(self[i])
      i += 1
    end
    self
  end
end
