require_relative 'my_enumerable'

class MyList
  include MyEnumerable
  def initialize(*ints)
    @list = []
    ints.each { |int| @list << int }
  end

  def each(&block)
    @list.map(&block)
  end
end
