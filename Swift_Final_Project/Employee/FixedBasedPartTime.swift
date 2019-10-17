//
//  FixedBasedPartTime.swift
//  Swift_Final_Project
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class FixedBasedPartTime: PartTime {
    var fixedAmount:Double!
    var totalPay:Double!
    var employementType:String!
    init(fixedAmount:Double,totalPay:Double,employementType:String) {
        self.fixedAmount = fixedAmount
        self.totalPay = totalPay
        self.employementType = employementType
    }
    func calcEarning()  {
        var  x:Double = 0
        x = rate * hoursWorked
        x = x + fixedAmount
    }
}
