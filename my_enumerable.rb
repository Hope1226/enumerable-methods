module MyEnumerable
  def all?
    chkr = true
    @list.map { |int| chkr = false unless yield int }
    puts chkr
  end
end
