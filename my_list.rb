require_relative 'my_enumerable'

class MyList
  include MyEnumerable
  def initialize(list)
    @list = list
  end

  def each(&block)
    @list.map(&block)
  end
end

test = MyList.new([1, 2, 3, 4])
test.each { |e| p e }

puts(test.all? { |e| e < 5 })
puts(test.any? { |e| e == 2 })
p(test.filter(&:even?))
