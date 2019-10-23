//
//  main.swift
//  Swift_Final_Project
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation




public class JsonParsing {
    
    
    enum emptype : String{
        case Intern
        case FullTime
        case PartTime_Fixed_Amount
        case PartTime_Commissioned
    }
    
    func dataparsing() {
        
        let url = Bundle.main.url(forResource: "JsonResponse", withExtension: "json")!
        
        
        do {
            guard let jsonData = try? Data(contentsOf: url) else {
                return
            }
            
            guard (try? JSONSerialization.jsonObject(with: jsonData, options: [])) != nil else {
                return
            }
            
            
            //     var modobj = Model()
            
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

                
                //iterating through the data
                for i in 0..<model.jsondata.count{
                    
                    if(emptype.Intern.rawValue == model.jsondata[i].type)
                    {
                        let internobj = Intern(id: model.jsondata[i].id, name: model.jsondata[i].name, age: model.jsondata[i].age, schoolName: model.jsondata[i].schoolName!, employeeType: model.jsondata[i].type)
                        internobj.displayData()
                    }
                    else if (emptype.FullTime.rawValue == model.jsondata[i].type)
                    {
                        let fulltimeObj = FullTime(id: model.jsondata[i].id, name: model.jsondata[i].name, age: model.jsondata[i].age, bonus: model.jsondata[i].bonus!, salary: model.jsondata[i].salary!)
                        fulltimeObj.displayData()
                    }
                    else if(emptype.PartTime_Fixed_Amount.rawValue == model.jsondata[i].type)
                    {
                        let fixedbasedPT = FixedBasedPartTime(id: model.jsondata[i].id, name: model.jsondata[i].name, age: model.jsondata[i].age, hrate: Double(model.jsondata[i].rate!), hoursWorked: Double(model.jsondata[i].hoursWorked!), fixedAmount: Double(model.jsondata[i].fixedAmount!))
                        fixedbasedPT.displayData()
                    }
                    else if(emptype.PartTime_Commissioned.rawValue == model.jsondata[i].type)
                    {
                        let commisionBasedPt = CommisionBasedPartTime(id: model.jsondata[i].id, name: model.jsondata[i].name, age: model.jsondata[i].age, hrate:Double(model.jsondata[i].rate!), hoursWorked: Double(model.jsondata[i].hoursWorked!), commision: Double(model.jsondata[i].commissionPercent!))
                        commisionBasedPt.displayData()
                    }
                }
                
              
            } catch let parsingError {
                print("Error", parsingError)
            }
            
        }
    }
    
}

var obj = JsonParsing()
obj.dataparsing()
