import UIKit

//1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.
//2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)
//3. * Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.

struct queue <element: Comparable> {
    var items = [element]()
    
    mutating func add (_ i: element) {
        print("Добавлен элемент \(i)")
        items.append(i)
    }

    mutating func next() -> element {
        print("Следующий в очереди \(items.first!)")
        return items.removeFirst()
    }
    
    mutating func sort() -> [element] {
        return items.sorted(by: >)
    }
    
    func filter (i: element) {
        print("Элемент в очереди равен \(items.filter {$0 == i})")
    }
    
    
    subscript (index: Int) -> element? {
        index < items.count ? items[index] : nil
    }
}

var start = queue<String>(items: ["Кошка"])
start.add("Собака")
start.add("Корова")
start.add("Курица")
start.add("Лошадь")
start.add("Свинья")

print(start.items)
print(start.sort())

start.next()
start.next()

print(start.items)

start.add("Овца")
start.add("Корова")

print(start.items)

start.filter(i: "Корова")
start.filter(i: "вавпвпвап")
