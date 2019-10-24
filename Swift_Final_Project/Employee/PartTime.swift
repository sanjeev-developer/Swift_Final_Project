//
//  PartTime.swift
//  Swift_Final_Project
//
//  Created by MacStudent on 2019-10-23.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class PartTime : Employee
{
    var rate : Double
    var hWorked : Double
    
    
    init (id : Int, type: String, name : String,age : Int,hrate : Double, hoursWorked : Double, vobj: Model.Vehicle)
    {
        self.rate = hrate
        self.hWorked = hoursWorked
        super.init(name: name, id : id, age: age, vobj: vobj ,type:type )
    }
    
    override func displayData() {
        super.displayData()
        print("Hourly Wage : \(rate)")
        print("Hours Worked : \(hWorked)")
        
        
    }
}
