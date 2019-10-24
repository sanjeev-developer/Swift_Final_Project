//
//  CommisionBasedPartTime.swift
//  Swift_Final_Project
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class CommisionBasedPartTime: PartTime
{
    var commision : Double = 0
    
    var totalPay : Double{
        return super.rate * super.hWorked + commision

    }
    
    init(id : Int , type: String, name: String,age : Int,hrate : Double, hoursWorked: Double, commision:Double, vobj: Model.Vehicle)
    {
        super.init(id: id, type:type ,name: name, age: age, hrate: hrate, hoursWorked: hoursWorked, vobj: vobj)
        self.commision = commision
        
    }
    
    
    override func displayData() {
        super.displayData()
        print("Commision : \(commision)")
        print("Total Salary : \(totalPay)")
    }
    
    
    
}
