class Array
  def my_select
    return dup.to_enum unless block_given?

    result = []
    i = 0

    while i < size
      result << self[i] if yield(self[i])
      i += 1
    end
    result
  end
end
