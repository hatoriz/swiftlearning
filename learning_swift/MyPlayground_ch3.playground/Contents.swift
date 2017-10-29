//: Playground - noun: a place where people can play

import UIKit
//----------- CLASS -----
class InitAndDeinitExample {
    init() {
        print("I've been created")
    }
    
    convenience init? (value: Int){
        self.init()
        
        if value > 5 {
            return nil
        }
        else {
            print("I was called with the convenience init")
        }

    }
    
    deinit {
        print("I'm going away")
    }
}

var example : InitAndDeinitExample?

example = InitAndDeinitExample(value: 6)
//----------- CLASS END -----
