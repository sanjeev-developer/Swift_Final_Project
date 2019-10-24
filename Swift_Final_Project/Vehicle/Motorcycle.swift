//
//  Motorcycle.swift
//  Swift_Final_Project
//
//  Created by MacStudent on 2019-10-22.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Motorcycle : Vehicles
{
    
    
    var model : String = ""
    var insurance = Bool()
    var yearOfMake = String()
    
    init(make : String , plate : String, model : String, insurance : Bool , year: String)
    {
        super.init(make: make, plate: plate)
        self.model = model
        self.yearOfMake = year
        self.insurance = insurance
        
    }
    
    override func displayData() {
        super.displayData()
        print("Model : \(model)")
        print("Year of Make : \(yearOfMake)")
        print("Insurance : \(insurance)")
    }
}
