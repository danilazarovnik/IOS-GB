import UIKit

//1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
//2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
//3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
//4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//6. Вывести сами объекты в консоль.

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

protocol Car {
    var brend: String { get }
    var yearOfManufacture: Int { get }
    var carEngin: CarEngine { get set }
    var carWindow: CarWindow { get set }
    var load: Load { get set }
}

extension Car {
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

class trunkCar: Car, CustomStringConvertible {
    var brend: String
    var yearOfManufacture: Int
    var carEngin: CarEngine
    var carWindow: CarWindow
    var load: Load
    var tank: String //цистерна
    var description: String {
        return "марка тачки \(brend), год выпуска \(yearOfManufacture)"
    }
    
    init(brand: String, yearOfManufacture: Int, carEngin: CarEngine, carWindow: CarWindow, load: Load, tank: String) {
        self.brend = brand
        self.yearOfManufacture = yearOfManufacture
        self.carEngin = carEngin
        self.carWindow = carWindow
        self.load = load
        self.tank = tank
    }
}

class sportCar: Car {
    var brend: String
    var yearOfManufacture: Int
    var carEngin: CarEngine
    var carWindow: CarWindow
    var load: Load
    var speed: Int //скорость
    var description: String {
        return "марка тачки \(brend), год выпуска \(yearOfManufacture)"
    }
    
    init(brand: String, yearOfManufacture: Int, carEngin: CarEngine, carWindow: CarWindow, load: Load, speed: Int) {
        self.brend = brand
        self.yearOfManufacture = yearOfManufacture
        self.carEngin = carEngin
        self.carWindow = carWindow
        self.load = load
        self.speed = speed
    }
}

var honda = sportCar(brand: "HONDA", yearOfManufacture: 1999, carEngin: .start, carWindow: .close, load: .empty, speed: 242)
var nissan = sportCar(brand: "NISSAN", yearOfManufacture: 2010, carEngin: .stop, carWindow: .open, load: .empty, speed: 320)

var kamaz = trunkCar(brand: "KAMAZ", yearOfManufacture: 2002, carEngin: .start, carWindow: .open, load: .full, tank: "TONAR")
var man = trunkCar(brand: "MAN", yearOfManufacture: 2012, carEngin: .stop, carWindow: .close, load: .empty, tank: "MAN")

honda.speed = 140
honda.carEngin = .stop
nissan.carWindow = .close
nissan.speed = 230
kamaz.load = .empty
kamaz.carWindow = .close
man.tank = "MAMMAMAMAMAMA"
man.carEngin = .start
