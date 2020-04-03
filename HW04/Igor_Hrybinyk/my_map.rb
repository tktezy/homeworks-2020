class Array
  def my_map
    return dup unless block_given?

    result = []
    for value in self
      result << yield(value)
    end
    result
  end
end
