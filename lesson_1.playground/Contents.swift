import UIKit

// 1. Решить квадратное уравнение.
// вид уравнения ax^2 + bx + c = 0
var a, b, c, x1, x2, d: Double
a = 1
b = 5
c = 6

if a > 0, b > 0, c > 0 {
    d = b * b - 4 * a * c // дискриминант

    if d > 0 {
        x1 = (-b + sqrt(d)) / (2 * a)
        x2 = (-b - sqrt(d)) / (2 * a)
        print("Первый корень = ", x1)
        print("Второй корень = ", x2)
    } else if d == 0 {
            x1 = -b / (2 * a)
            print("Один корень  = ", x1)
    } else if d < 0 {
            print("У уровнения нет корней")
        }
} else {
    print("Уравнение не квадратное или не полное квадратное, решается другим способом")
}


// 2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

var k1, k2, g: Double

k1 = 7 // первый катет
k2 = 3 // второй катет
g = sqrt(k1 * k1 + k2 * k2) // гипотенуза

print("Гипотенуза равна ", g)
print("Площадь треугольника ", (k1 + k2) / 2)
print("Периметр треугольника ", k1 + k2 + g)


// 3. * Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.

var sum, cent, period, total: Double

sum = 500000 // сумма вклада
cent = 6 // годовой процент по вкладу
period = 60 // срок вклада в месяцах

var centPeriod = cent / 12 // процент за 1 месяц
total = sum * pow((1 + centPeriod / 100), period) // сумма вклада в конце срока с ежемесячной капитализацией

print("Сумма вклада с учетом капитализации в конце срока составит ", total)