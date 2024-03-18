require 'prime'


def prime_with_require(n)
  raise ArgumentError, "N не может быть отрицательным или равняться нулю, для таких значений результатом будет пустой массив" if n <= 0

  result = Prime.first(n).inspect
end


#Находит N первых простых чисел
#
# @param [Integer] n Количество простых чисел, которое нужно найти
# @return [Array<Numeric>] Строка, содержащая результат работы программы
# @raise [ArgumentError] Возникает, если N <= 0
# Пример:
#
#   input: 5
#   output: [2, 3, 5, 7, 11]
#
def prime(n)
  raise ArgumentError, "N не может быть отрицательным или равняться нулю, для таких значений результатом будет пустой массив" if n <= 0

  new_arr = []
  counter = 2

  while new_arr.size < n
    if (2..counter/2).none?{|j| counter % j == 0}
      new_arr << counter
    end
    counter += 1
  end
  new_arr
end
