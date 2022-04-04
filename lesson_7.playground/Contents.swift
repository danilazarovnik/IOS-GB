import UIKit

//1. Придумать класс, методы которого могут завершаться неудачей и возвращать либо значение, либо ошибку Error?. Реализовать их вызов и обработать результат метода при помощи конструкции if let, или guard let.
//2. Придумать класс, методы которого могут выбрасывать ошибки. Реализуйте несколько throws-функций. Вызовите их и обработайте результат вызова при помощи конструкции try/catch.


enum atmError: Error { //ошибки банкомата
    case noMoneyOnTheCard //нет денег на карте
    case noMoneyOnTheATM //нет денег в банкомате
    case wrongPin //неверный пин-код
}

class atm {
    
    var atmMoney: Int //денег в банкомате
    var cardMony: Int //денег на карте
    var pinCode: Bool //верный-неверный пин
    var cashRequest: Int //запрос клиента на выдачу
    
    func GetCash() throws {
        
        guard pinCode == true else {
            throw atmError.wrongPin
        }
        guard atmMoney > cardMony else {
            throw atmError.noMoneyOnTheATM
        }
        guard cardMony > cashRequest else {
            throw atmError.noMoneyOnTheCard
        }
        
        print("Вам выдано \(cashRequest)")
        
        do {
            try GetCash()
        } catch atmError.noMoneyOnTheCard {
            print("Не достаточно средств на карте")
        } catch atmError.noMoneyOnTheATM {
            print("Банкомат пуст")
        } catch atmError.wrongPin {
            print("Не верный пин-код")
        }
    }

    init(atmMoney: Int, cardMony: Int, pinCode: Bool, cashRequest: Int) {
        self.atmMoney = atmMoney
        self.cardMony = cardMony
        self.pinCode = pinCode
        self.cashRequest = cashRequest
    }
}

var vasili = atm(atmMoney: 100, cardMony: 200, pinCode: true, cashRequest: 400)
var igor = atm(atmMoney: 500, cardMony: 200, pinCode: true, cashRequest: 100)
var petr = atm(atmMoney: 200, cardMony: 100, pinCode: false, cashRequest: 100)

petr.atmMoney = 1000
igor.cardMony = 0

print(vasili)
print(igor)
print(petr)


