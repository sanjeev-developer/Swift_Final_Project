//
//  Intern.swift
//  Swift_Final_Project
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Intern : Employee
{
    var schoolName:String
    var totalPay:Double {
        return super.calcEarning()
    }
    
    init( id : Int,type: String,name : String , age : Int, schoolName:String, employeeType:String, vobj: Model.Vehicle)
    {
        
        self.schoolName = schoolName
        super.init(name: name, id: id, age: age, vobj: vobj, type: type)
       
    }
    
    
        
    }
}
