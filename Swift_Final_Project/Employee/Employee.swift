//
//  Employee.swift
//  Swift_Final_Project
//
//  Created by MacStudent on 2019-10-16.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Employee : DisplayProtocol
{
   
    
    var name:String
    var id : Int
    var age : Int
    var birthYear : Int{
        return 2019 - age
    }
    
    
  
    
    init(name : String, id : Int, age : Int) {
        self.id = id
        self.age = age
        self.name = name
    }
    
    func displayData() {
        print("*******************************************************")
        print("Employee ID : \(id)")
        print("Employee Name : \(name)")
        print("Employee BirthYear : \(birthYear)")
        
       // var vehicleobj = Vehicle()
   
        
    }
    
    func calcEarning ()-> Double
    {
        return 1000
    }
    
    
    func calcBirthYear(a:CLong ) -> CLong {
        var  x:CLong = 0
        x = 2019 - a
        return x
    }
}
