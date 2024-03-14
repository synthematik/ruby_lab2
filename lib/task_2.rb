# Умножение комплексных чисел
#
# @param [Numeric] a Действительная часть первого комплексного числа
# @param [Numeric] b Мнимая часть первого комплексного числа
# @param [Numeric] c Действительная часть второго комплексного числа
# @param [Numeric] d Мнимая часть второго комплексного числа
# @return [String] Массив из двух чисел [e, g], таких, что (a+ib)*(c+id) = e+ig
# @raise [ArgumentError] Возникает, если входные аргументы не являются вещественными числами
# Пример:
#
#   input: 2, 3, 4, 5
#   output: "[-7, 22]"
def multiply_complex_numbers(a, b, c, d)
  raise ArgumentError, "Входные аргументы должны быть вещественными числами." unless [a, b, c, d].all? { |num| num.is_a?(Numeric) }

  e = a * c - b * d
  g = a * d + b * c

  result = ([e, g]).inspect
end
