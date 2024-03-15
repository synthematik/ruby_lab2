# Функция определяет количество очков за бросок мяча в баскетбольное кольцо в зависимости от координат X и Y
#
# @param [Numeric] x Координата X точки броска
# @param [Numeric] y Координата Y точки броска
# @raise [ArgumentError] Если координата X или Y меньше нуля
#
# @return [Integer, nil] Количество очков за бросок
# • nil если точка вне площадки
# • 2 если попадание из этой точки стоит 2 очка
# • 3 если попадание из этой точки стоит 3 очка
def basket_func(x, y)
  raise ArgumentError, "Координаты не могут быть меньше нуля" if x < 0 || y < 0
  return nil if x > 28 || y > 15

  distance_from_basket = Math.sqrt((x - 28)**2 + (y - 15)**2)

  distance_from_basket > 6.25 ? 3 : 2

end
