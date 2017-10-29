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

