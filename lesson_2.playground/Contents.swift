import UIKit


//1. Написать функцию, которая определяет, четное число или нет.

var a = 9
a % 2 == 0 ? print("Число четное") : print("Число не четное")


//2. Написать функцию, которая определяет, делится ли число без остатка на 3.

var b = 6
a % 3 == 0 ? print("Число делится на 3 без остатка") : print("Число не делится на 3 без остатка")


//3. Создать возрастающий массив из 100 чисел.

var c = 1
var resultArrey = [Int]()
while c <= 100 {
    resultArrey.append(c)
    c += 1
}
print(resultArrey)


//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

for i in resultArrey {
    if ((i % 2) == 0) {
        resultArrey.remove(at: resultArrey.firstIndex(of: i)!)
    }
}

for i in resultArrey {
    if ((i % 3) != 0) {
        resultArrey.remove(at: resultArrey.firstIndex(of: i)!)
    }
}
print(resultArrey)


// 5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.

var fibonachi: [Decimal] = [0, 1]
var t = 0
while t < 50 {
    fibonachi.append(fibonachi[fibonachi.count - 1] + fibonachi[fibonachi.count - 2])
    t += 1
}
print(fibonachi)

