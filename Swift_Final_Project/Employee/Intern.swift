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
    
    init( id : Int,name : String , age : Int, schoolName:String,employeeType:String)
    {
        
        self.schoolName = schoolName
        super.init(name: name, id: id, age: age)
       
    }
    
    override func displayData() {
        super.displayData()
        print("School Name : \(schoolName)")
        print("Salary : \(totalPay)")
        
    }
}
