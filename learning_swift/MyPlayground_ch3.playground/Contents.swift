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

