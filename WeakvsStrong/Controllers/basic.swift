//
//  basic.swift
//  WeakvsStrong
//
//  Created by Tasuku Yamamoto on 7/21/22.
//

import Foundation

class Person {
    
    let name: String
    var macbook: MacBook?
    
    init(name: String, macbook: MacBook?) {
        self.name = name
        self.macbook = macbook
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
    
}//End of class


class MacBook {
    
    let name: String
//    var owner: Person?
    weak var owner: Person?
    
    init(name: String, owner: Person?) {
        self.name = name
        self.owner = owner
    }
    
    deinit {
        print("Macbook named \(name) is being deinitialized")
    }
    
}//End of class
