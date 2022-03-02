import UIKit


//1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.
//2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
//3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
//4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
//5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
//6. Вывести значения свойств экземпляров в консоль.


enum carEngine {
    case start, stop
}
enum carWindow {
    case open, close
}
enum load {
    case full, empty
}

struct sportCar {
    let brand: String
    var yearOfManufacture: Int {
        willSet {
            let y = String(self.yearOfManufacture)
            print(brand, y, "года выпуска")
        }
    }
    var trunkVolume: Double {
        willSet {
            print("Багажник \(brand) объемом \(trunkVolume)")
        }
    }
    var carEngine: carEngine {
        willSet {
            if newValue == .start {
                print(brand, "двигатель запущен")
            } else{
                print(brand, "двигатель не запущен")
            }
        }
    }
    var carWindow: carWindow {
        willSet {
            if newValue == .open {
                print(brand, "окно открыто")
            } else {
                print(brand, "окно закрыто")
            }
        }
    }
    var loading: Double {
        willSet {
            let a = trunkVolume - newValue
            if a > 0 && a != 0 {
                print("В багажнике \(brand) осталось \(a) места")
            } else {
                print(brand, "багажник загружен подзавязку")
            }
        }
    }
    var color: String
    mutating func changeColor(c: String) {
        switch c {
            case "белый":
                self.color = "белый"
                print("цвет автомобиля", brand, color)
            case "черный":
                self.color = "черный"
                print("цвет автомобиля", brand, color)
            case "синий":
                self.color = "синий"
                print("цвет автомобиля", brand, color)
            case "красный":
                self.color = "красный"
                print("цвет автомобиля", brand, color)
            default:
                print("Такого цвета не существует для этого автомобиля")
            }
        }
}

struct trunkCar {
    let brand: String
    var yearOfManufacture: Int {
        willSet {
            let y = String(self.yearOfManufacture)
            print(brand, y, "года выпуска")
        }
    }
    var trunkVolume: Double
    var carEngine: carEngine {
        willSet {
            if newValue == .start {
                print(brand, "двигатель запущен")
            } else{
                print(brand, "двигатель не запущен")
            }
        }
    }
    var carWindow: carWindow {
        willSet {
            if newValue == .open {
                print(brand, "окно открыто")
            } else {
                print(brand, "окно закрыто")
            }
        }
    }
    var loading: Double {
        willSet {
            let a = trunkVolume - newValue
            if a > 0 && a != 0 {
                print("В багажнике \(brand) осталось \(loading) места")
            } else {
                print(brand, "багажник загружен подзавязку")
            }
        }
    }
    var color: String
    mutating func changeColor(c: String) {
        switch c {
            case "белый":
                self.color = "белый"
                print("цвет автомобиля", brand, color)
            case "черный":
                self.color = "черный"
                print("цвет автомобиля", brand, color)
            case "синий":
                self.color = "синий"
                print("цвет автомобиля", brand, color)
            case "красный":
                self.color = "красный"
                print("цвет автомобиля", brand, color)
            default:
                print("Такого цвета не существует для этого автомобиля")
            }
        }
}

var sportCar1 = sportCar(brand: "AUDI", yearOfManufacture: 2020, trunkVolume: 60, carEngine: .stop, carWindow: .close, loading: 1, color: "non")
var sportCar2 = sportCar(brand: "BMW", yearOfManufacture: 1998, trunkVolume: 23, carEngine: .start, carWindow: .open, loading: 23, color: "non")

var truck1 = trunkCar (brand: "MAN", yearOfManufacture: 2018, trunkVolume: 230, carEngine: .stop, carWindow: .close, loading: 150, color: "non")
var truck2 = trunkCar (brand: "KAMAZ", yearOfManufacture: 1976, trunkVolume: 190, carEngine: .start, carWindow: .open, loading: 100, color: "non")

sportCar1.yearOfManufacture = 2020
sportCar1.carEngine = .start
sportCar1.loading = 5
sportCar1.loading = 10
sportCar1.carWindow = .open
sportCar1.changeColor(c: "черный")

sportCar2.yearOfManufacture = 1998
sportCar2.carEngine = .stop
sportCar2.loading = 25
sportCar2.loading = 0
sportCar2.carWindow = .open
sportCar2.carWindow = .close
sportCar2.changeColor(c: "sdcdc")

truck1.yearOfManufacture = 2018
truck1.carEngine = .start
truck1.loading = 200
truck1.loading = 10
truck1.carWindow = .open
truck1.changeColor(c: "красный")

truck2.yearOfManufacture = 1976
truck2.carEngine = .stop
truck2.loading = 76
truck2.loading = 200
truck2.carWindow = .open
truck2.carWindow = .close
truck2.changeColor(c: "белый")
