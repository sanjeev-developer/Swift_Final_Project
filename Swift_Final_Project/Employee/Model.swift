//
//  Model.swift
//  Swift_Final_Project
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

public class Model
{
    // MARK: - Welcome
    struct Welcome: Codable {
        let jsondata: [Jsondatum]
    }
    
    // MARK: - Jsondatum
    struct Jsondatum: Codable {
        let jsondatumClass: String
        let id: Int
        let name: String
        let age: Int
        let vehicle: Vehicle?
        let schoolName: String?
        let type: String
        let salary, bonus, rate, hoursWorked: Int?
        let fixedAmount, commissionPercent: Int?
        
        enum CodingKeys: String, CodingKey {
            case jsondatumClass = "@class"
            case id, name, age, vehicle, schoolName, type, salary, bonus, rate, hoursWorked, fixedAmount, commissionPercent
        }
    }
    
    // MARK: - Vehicle
      struct Vehicle: Codable {
      let vehicleClass: String
      let id: Int
      let make, plate, model, year: String
      let insurance: Bool
    let type: String
    let doors: Int?
        
        enum CodingKeys: String, CodingKey {
            case vehicleClass = "@class"
            case id, make, plate, model, year, insurance, type, doors
        }
    }
}



