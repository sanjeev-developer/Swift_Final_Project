//
//  FullTime.swift
//  Swift_Final_Project
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class FullTime : Employee
{
    var bonus:Double = 0
    var salary:Double = 0
    var total:Double{
        return salary + bonus
    }
    
    init(id : Int, type:String ,name : String, age : Int, bonus : Int, salary : Int, vobj: Model.Vehicle)
    {
        super.init(name: name, id: id, age: age, vobj: vobj, type:type)
        self.bonus = Double(bonus)
        self.salary = Double(salary)
    }
    
    
    
    override func displayData()
    {
        super.displayData()
        print("Salary :\(salary)")
        print("Bonus :\(bonus)")
        print("Total Pay : \(total)")
        
    }
    
}

