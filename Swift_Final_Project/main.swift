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

            
            do {
                //here dataResponse received from a network request
                let decoder = JSONDecoder()
                
                
                //Decode JSON Response Data
                let model = try decoder.decode(Model.Welcome.self, from: jsonData)

                
                for i in 0..<model.jsondata.count{
                    
                    if(emptype.Intern.rawValue == model.jsondata[i].type)
                    {
                        let internobj = Intern(id: model.jsondata[i].id,type: model.jsondata[i].type, name: model.jsondata[i].name, age: model.jsondata[i].age, schoolName: model.jsondata[i].schoolName!, employeeType: model.jsondata[i].type, vobj: model.jsondata[i].vehicle!)
                        
                        internobj.displayData()
                    }
                    else if (emptype.FullTime.rawValue == model.jsondata[i].type)
                    {
                        let fulltimeObj = FullTime(id: model.jsondata[i].id,type: model.jsondata[i].type, name: model.jsondata[i].name, age: model.jsondata[i].age, bonus: model.jsondata[i].bonus!, salary: model.jsondata[i].salary!,vobj: model.jsondata[i].vehicle!)
                        fulltimeObj.displayData()
                    }
                    else if(emptype.PartTime_Fixed_Amount.rawValue == model.jsondata[i].type)
                    {
                        let fixedbasedPT = FixedBasedPartTime(id: model.jsondata[i].id,type: model.jsondata[i].type, name: model.jsondata[i].name, age: model.jsondata[i].age, hrate: Double(model.jsondata[i].rate!), hoursWorked: Double(model.jsondata[i].hoursWorked!), fixedAmount: Double(model.jsondata[i].fixedAmount!),vobj: model.jsondata[i].vehicle!)
                        fixedbasedPT.displayData()
                    }
                    else if(emptype.PartTime_Commissioned.rawValue == model.jsondata[i].type)
                    {
                        let commisionBasedPt = CommisionBasedPartTime(id: model.jsondata[i].id,type: model.jsondata[i].type, name: model.jsondata[i].name, age: model.jsondata[i].age, hrate:Double(model.jsondata[i].rate!), hoursWorked: Double(model.jsondata[i].hoursWorked!), commision: Double(model.jsondata[i].commissionPercent!),vobj: model.jsondata[i].vehicle!)
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
