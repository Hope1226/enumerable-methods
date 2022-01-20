class MyList
  def initialize(list)
    @list = list
  end

  def each(&block)
    @list.map(&block)
  end
end

test = MyList.new([1, 2, 3, 4])
test.each { |e| p e }
