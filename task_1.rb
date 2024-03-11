# frozen_string_literal: false


def func(array)
  array.each_with_index  do |elem, i|
    if elem < 0
      array[i] = -array[i]
    end
  end

  max1 = array.max
  array.delete(max1)
  max2 = array.max
  res = [max2, max1].inspect

end

def func2(array)
  return "Ошибка! Массив пустой." if array.empty?

  array.sort

  if array.first < 0
    min_element = array.min
    max_element = array.max
    res1 = [min_element, max_element].inspect
  else
    max1 = array.max
    array.delete(max1)
    max2 = array.max
    res2 = [max2, max1].inspect
  end
end

def func3(array)
  arr = (array.sort { |a,b | a.abs <=> b.abs}).inspect

end

puts func3([-1.2, 4.3, -8.2])
puts func3([-1.231, -4.133, -8.222])
puts func3([-111.2,2.23,3.23,-434.2,5.1212,-6.3222])
puts func3([])
puts func3([4.33, -676.22, -8.2, 2.22, 132.1, 14124.21, -13231.222, -132.2])


#puts arr = [-1,-2,-4,2, 6, 9, -13, 8].sort { |a,b | a.abs <=> b.abs}