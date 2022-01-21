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
    filtered_values = []
    @list.each { |int| filtered_values.push(int) if yield int }
    filtered_values
  end
end
