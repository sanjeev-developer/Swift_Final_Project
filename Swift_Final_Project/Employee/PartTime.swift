//
//  PartTime.swift
//  Swift_Final_Project
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

public class JsonParsing {
    

    func dataparsing() {
        
        let url = Bundle.main.url(forResource: "JsonResponse", withExtension: "json")!
        
        
        do {
            guard let jsonData = try? Data(contentsOf: url) else {
                return
            }
            
            guard let json = try? JSONSerialization.jsonObject(with: jsonData, options: []) else {
                return
            }
            
           // print(json)
            
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
            
            do {
                //here dataResponse received from a network request
                let decoder = JSONDecoder()
                //Decode JSON Response Data
                let model = try decoder.decode(Welcome.self, from: jsonData)
                
                for i in 0...model.jsondata.count-1{
                    // anArray.append("This String")
                     print("Hello JavaTpoint \(model.jsondata[i].age)")
                }
                
                for i in 0...model.jsondata.count-1{
                    
                    var compare = "Intern"
                    
                    guard compare == model.jsondata[i].type else {
                        return
                    }
                    print("Hello JavaTpoint \(model.jsondata[i].vehicle?.type)")
                    print("Hello JavaTpoint \(model.jsondata[i].vehicle?.type)")
                    
                    var objectone = Intern()
                    let result : Int = objectone.demoreturn(x: model.jsondata[i].age, y: model.jsondata[i].id)
                    print(result)
                    
                    break
                }
                
                print(model.jsondata.count) //Output - 1221
            } catch let parsingError {
                print("Error", parsingError)
            }
          
    }
}

    }

