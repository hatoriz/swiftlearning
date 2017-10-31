//: Playground - noun: a place where people can play

import UIKit
//----------- CLASS -----
//class InitAndDeinitExample {
//    init() {
//        print("I've been created")
//    }
//
//    convenience init? (value: Int){
//        self.init()
//
//        if value > 5 {
//            return nil
//        }
//        else {
//            print("I was called with the convenience init")
//        }
//
//    }
//
//    deinit {
//        print("I'm going away")
//    }
//}
//
//var example : InitAndDeinitExample?
//
//example = InitAndDeinitExample(value: 6)
//----------- CLASS END -----

////------ Observer ----
//class PropertyObserverExample {
//    var number : Int = 0 {
//        willSet(newNumber) {
//            print("About to change to \(newNumber)")
//        }
//        didSet(oldNumber) {
//            print("Just changed from \(oldNumber) to \(self.number)!")
//        }
//    }
//}
//
//var observer = PropertyObserverExample()
//observer.number = 2
//observer.number = 5
////------ Observer  End ----

////------ Lazy Property ----
//class SomeExpensiveClass {
//    init(id: Int) {
//        print("Expensive class \(id) created!")
//    }
//}
//
//class LazyPropertyExample {
//    // normal class
//    var expensiveClass1 = SomeExpensiveClass(id: 1)
//
//    // lazy class
//    lazy var expensiveClass2 = SomeExpensiveClass(id: 2)
//
//    init(){
//        print ("First class created!")
//    }
//
//}
//
//var lazyExample = LazyPropertyExample()
//
//lazyExample.expensiveClass1
//lazyExample.expensiveClass2
//
////------ Lazy Property End ----

//////------ Protocol ----
//protocol Blinking {
//    var isBlinking : Bool {get}
//
//    var blinkSpeed: Double { get set}
//
//    func startBlinking(blinkSpeed: Double) -> Void
//}
//
//class TrafficLight : Blinking {
//    var isBlinking: Bool = false
//
//    var blinkSpeed: Double = 0.0
//
//    func startBlinking(blinkSpeed: Double) {
//        print("I am a traffic light, and I am now blinking")
//        isBlinking = true
//
//        self.blinkSpeed = blinkSpeed
//    }
//}
//
//class LightHouse : Blinking {
//    var isBlinking: Bool = false
//
//    var blinkSpeed: Double = 0.0
//
//    func startBlinking(blinkSpeed : Double) {
//        print("I am a lighthouse, and I am now blinking")
//        isBlinking = true
//
//        self.blinkSpeed = blinkSpeed
//    }
//}
//
//var aBlinkingThing : Blinking
//
//aBlinkingThing = TrafficLight()
//
//aBlinkingThing.startBlinking(blinkSpeed: 4.0)
//aBlinkingThing.blinkSpeed
//
//aBlinkingThing = LightHouse()
//
//////------ Protocol End ----

//// Loading from URL
//if let URL = URL(string: "https://oreilly.com") {
//    let loadedDataFromURL = try? Data(contentsOf: URL)
//}


////---------- Error Handling ------
//
//enum BankError : Error {
//    // Not enough money in the account
//    case notEnoughFunds
//
//    // Can't create an account with negative money
//    case cannotBeginWithNegativeFunds
//
//    // Can't make a negative deposit or withdrawal
//    case cannotMakeNegativeTransaction(amount:Float)
//}
//
//class BankAccount {
//    private (set) var balance : Float = 0.0
//
//    init(amount : Float) throws {
//
//        guard amount > 0 else {
//            throw BankError.cannotBeginWithNegativeFunds
//        }
//        balance = amount
//    }
//
//    func deposit(amount : Float) throws {
//        guard amount > 0 else {
//            throw BankError.cannotMakeNegativeTransaction(amount: amount)
//        }
//
//        balance += amount
//    }
//
//    // Withdraws money from the bank account
//    func withdraw(amount : Float) throws {
//
//        // Ensure that we're trying to deposit a non-negative amount
//        guard amount > 0 else {
//            throw BankError.cannotMakeNegativeTransaction(amount: amount)
//        }
//
//        // Ensure that we have enough to withdraw this amount
//        guard balance >= amount else {
//            throw BankError.notEnoughFunds
//        }
//
//        balance -= amount
//    }
//}
//
//do {
//    let vacationFund = try BankAccount (amount: -5)
//    try vacationFund.deposit(amount: 10)
//    try vacationFund.withdraw(amount: 1)
//    
//} catch let error as BankError {
//    switch error {
//    case .notEnoughFunds :
//        print("Not enought fund")
//    case .cannotBeginWithNegativeFunds:
//        print("Tried to start an account with negative money!")
//    case .cannotMakeNegativeTransaction(let amount):
//        print("Tried to do a transaction with a negative amount of \(amount)!")
//    default:
//        print("Bank Account unknow error")
//    }
//}
//
//let secretBankAccount = try? BankAccount(amount: -50)
////---------- Error Handling Ends ------
//
//////---------- Delegation ------
//protocol HouseSecurityDelegate {
//    func handleIntruder()
//}
//
//class House {
//    var delegator: HouseSecurityDelegate?
//
//    func burglarDetected(){
//        delegator?.handleIntruder()
//    }
//}
//
//class GuardDog : HouseSecurityDelegate {
//    func handleIntruder(){
//        print("Release the hounds !")
//    }
//}
//
//class
//
//let myHouse = House()
//myHouse.burglarDetected()
//
//let guardDog = GuardDog()
//myHouse.delegator = guardDog
//myHouse.burglarDetected()
//
//////---------- Delegation ------

















