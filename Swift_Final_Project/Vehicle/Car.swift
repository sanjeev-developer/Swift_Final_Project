//
//  Car.swift
//  Swift_Final_Project
//
//  Created by MacStudent on 2019-10-22.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Car : Vehicles
{
    var noOfDoors = Int()
    var model = String()
    var yearOfMake = String()
    var insurance = Bool()
    
    
    
    
    override func displayData() {
        super.displayData()
        print("Number of Doors \(noOfDoors)")
        print("Model : \(model)")
        print("Year of Make : \(yearOfMake)")
        print("Insurance : \(insurance)")    }
}
