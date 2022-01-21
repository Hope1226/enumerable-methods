module MyEnumerable
  def all?
    chkr = true
    @list.map { |int| chkr = false unless yield int }
    chkr
  end

  def any?
    @list.each { |int| return true if yield int }
    false
  end

  def filter
    even_values = []
    @list.each { |int| even_values.push(int) if yield int }
    even_values
  end
end
