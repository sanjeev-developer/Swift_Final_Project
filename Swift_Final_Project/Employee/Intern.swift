//
//  Intern.swift
//  Swift_Final_Project
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation


public class Intern
{
    var schoolName:String!
    var totalPay:Double!
    var birtYear:Int!
    var employeeType: String!
    init(schoolName:String,totalPay:Double,birthYear:Int,employeeType:String){
        self.schoolName = schoolName
        self.totalPay = totalPay
        self.birtYear = birthYear
        self.employeeType = employeeType
    }
    
}
