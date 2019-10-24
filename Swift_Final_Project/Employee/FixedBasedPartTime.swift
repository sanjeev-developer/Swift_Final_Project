//
//  FixedBasedPartTime.swift
//  Swift_Final_Project
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class FixedBasedPartTime : PartTime
{
    var fixedAmount : Double = 0
    var totalPay : Double {
        return super.rate * super.hWorked + fixedAmount
    }

    
    init(id: Int, type: String, name : String,age : Int,hrate : Double, hoursWorked: Double,fixedAmount:Double, vobj: Model.Vehicle)
    {
        
        super.init(id: id, type: type, name: name, age: age, hrate: hrate, hoursWorked: hoursWorked, vobj: vobj)
        
        self.fixedAmount = fixedAmount
        
    }
    
    
    
    
    override func displayData()
    {
        super.displayData()
        print("Fixed Amount : \(fixedAmount)")
        print("Total Pay : \(totalPay)")
    }
    
    
    
}
