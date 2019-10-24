//
//  Vehicle.swift
//  Swift_Final_Project
//
//  Created by MacStudent on 2019-10-22.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Vehicles : DisplayProtocol
{
    
    
    var make : String
    var plate : String
    
    init(make : String , plate : String)
    {
        self.make = make
        self.plate = plate
        
    }
    
    
    func displayData() {
        print("Make of Vehicle :\(make)")
        print("Vehicle : \(plate)")
        
    }
    
}

