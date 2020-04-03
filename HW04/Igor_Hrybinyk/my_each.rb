class Array
  def my_each
    return dup unless block_given?

    for value in self
      yield(value)
    end
    self
  end
end
