//
//  PartTime.swift
//  Swift_Final_Project
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class PartTime : Employee
{
    var rate : Double
    var hWorked : Double
    
    
    
    init (id : Int,name : String,age : Int,hrate : Double, hoursWorked : Double)
    {
        self.rate = hrate
        self.hWorked = hoursWorked
        super.init(name: name, id : id, age: age)
    }
    
    override func displayData() {
        super.displayData()
        print("Hourly Wage : \(rate)")
        print("Hours Worked : \(hWorked)")
       
        
    }
}

