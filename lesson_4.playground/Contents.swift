import UIKit

//1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
//2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
//3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.
//4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//6. Вывести значения свойств экземпляров в консоль.

class Car {
    enum CarEngine {
        case start
        case stop
    }
    enum CarWindow {
        case open
        case close
    }
    enum Load {
        case full
        case empty
    }
    
    
    let brend: String
    let yearOfManufacture: Int
    var carEngin: CarEngine
    var carWindow: CarWindow
    var load: Load
    
    init(brand: String, yearOfManufacture: Int, carEngin: CarEngine, carWindow: CarWindow, load: Load) {
        self.brend = brand
        self.yearOfManufacture = yearOfManufacture
        self.carEngin = carEngin
        self.carWindow = carWindow
        self.load = load
    }
    

    func carEnginDrive() {
        if carEngin == .start {
            print("Машина заведена")
        } else {
            print("Двигатель заглушен")
        }
    }
    
    func carWindowStatus() {
        if carWindow == .open {
            print("Окно открыто")
        } else {
            print("Окно закрыто")
        }
    }
    
    func bagageLoad () {
        if load == .full {
            print("Багажник полный")
        } else {
            print("В багажнике есть место")
        }
    }
}

class TrunkCar: Car {
    var trailer: Bool
    
    init(brand: String, yearOfManufacture: Int, carEngin: Car.CarEngine, carWindow: Car.CarWindow, load: Car.Load, trailer: Bool) {
        self.trailer = trailer
        super.init(brand: brand, yearOfManufacture: yearOfManufacture, carEngin: carEngin, carWindow: carWindow, load: load)
    }
    
    override func carEnginDrive() {
        if carEngin == .start {
            print("ОШИБКА. Бензина нет, машина не заведена")
        } else {
            print("Двигатель заглушен")
        }
    }
}

class SportCar: Car {
    var trunk: Bool
    
    init(brand: String, yearOfManufacture: Int, carEngin: Car.CarEngine, carWindow: Car.CarWindow, load: Car.Load, trunk: Bool) {
        self.trunk = trunk
        super.init(brand: brand, yearOfManufacture: yearOfManufacture, carEngin: carEngin, carWindow: carWindow, load: load)
    }
    
    override func bagageLoad() {
        print("ОШИБКА, Спорт машина не имеет багажа")
    }
}


var gruzovik1 = TrunkCar(brand: "MAN", yearOfManufacture: 1988, carEngin: .stop, carWindow: .close, load: .empty, trailer: true)
var gruzovik2 = TrunkCar(brand: "KAMAZ", yearOfManufacture: 1975, carEngin: .start, carWindow: .open, load: .full, trailer: true)
var pushkaBomba1 = SportCar(brand: "NISSAN", yearOfManufacture: 2020, carEngin: .start, carWindow: .open, load: .full, trunk: false)
var pushkaBomba2 = SportCar(brand: "HONDA", yearOfManufacture: 2010, carEngin: .start, carWindow: .close, load: .empty, trunk: false)

gruzovik1.carEngin = .start
gruzovik1.carWindow = .open
gruzovik2.carEngin = .stop
gruzovik2.trailer = false
pushkaBomba1.load = .empty
pushkaBomba1.carEngin = .start
pushkaBomba2.carWindow = .close
pushkaBomba2.carEngin = .stop

