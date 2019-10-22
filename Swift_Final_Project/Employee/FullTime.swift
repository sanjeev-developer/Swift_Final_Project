//
//  FullTime.swift
//  Swift_Final_Project
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class FullTime  {
    var bonous:Double!
    var salary:Double!
    var total:Double!
    var employementType:String!
    func calcEarning() -> Double  {
        var x:Double = 0
        x = salary + bonous
        return x
    }
}


