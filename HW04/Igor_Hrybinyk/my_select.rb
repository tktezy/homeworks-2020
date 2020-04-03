class Array
  def my_select
    return dup unless block_given?

    result = []
    for value in self
      result << value if yield(value)
    end
    result
  end
end
