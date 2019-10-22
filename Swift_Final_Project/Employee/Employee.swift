//
//  Employee.swift
//  Swift_Final_Project
//
//  Created by MacStudent on 2019-10-16.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Employee {
    var name:String = ""
    
    enum emptype : String{
        case Intern
        case FullTime
        case PartTime_Fixed_Amount
        case PartTime_Commissioned
    }
    
    func calcBirthYear(a:CLong ) -> CLong {
        var  x:CLong = 0
        x = 2019 - a
        return x
    }
}
