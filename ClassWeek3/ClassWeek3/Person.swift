//
//  Person.swift
//  ClassWeek3
//
//  Created by Student on 2017-01-24.
//  Copyright © 2017 proapptive. All rights reserved.
//

 import UIKit
protocol PSSayHello {
    
    func saysHello(viewController: ViewController)
    
}
class Person {
    // INSTANCE VARIABLES (FIELDS)
    var fullName: String!
    var age: Int!
    
    init(fullName: String,age: Int){
        self.fullName = fullName
        self.age = age
    }
    
}

class Professor: Person, PSSayHello {

    // Initiallizer like a constructor
    
    override init(fullName:String,age: Int)
    {
        super.init(fullName: fullName,age: age)
    }
    
    func saysHello(viewController: ViewController){
       
        viewController.showMyAlert(alertTitle: "Greeting", alertMessage: "\(self.fullName!) Says Hello")
    }
    
}
