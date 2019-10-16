//
//  PartTime.swift
//  Swift_Final_Project
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class JsonParsing : Newdata {
    
    var jsondataa : String = "//\n//  JsonResponse.swift\n//  Swift_Final_Project\n//\n//  Created by MacStudent on 2019-10-15.\n//  Copyright © 2019 MacStudent. All rights reserved.\n//\n\n//import Foundation\n\n\n{\n    \"jsondata\": [\n    {\n    \"@class\": \"ca.lambton.payroll.employee.Intern\",\n    \"id\": 1,\n    \"name\": \"Mitali\",\n    \"age\": 21,\n    \"vehicle\": {\n    \"@class\": \"Motorcycle\",\n    \"id\": 0,\n    \"make\": \"Honda\",\n    \"plate\": \"ABCD-123\",\n    \"model\": \"MODEL 1\",\n    \"year\" : \"2015\",\n    \"insurance\": true,\n    \"type\": \"Motorcycle\"\n    },\n    \"schoolName\": \"Lambton College\",\n    \"type\": \"Intern\"\n    },\n    {\n    \"@class\": \"ca.lambton.payroll.employee.FullTime\",\n    \"id\": 2,\n    \"name\": \"Pritesh\",\n    \"age\": 35,\n    \"vehicle\": {\n    \"@class\": \"Car\",\n    \"id\": 0,\n    \"make\": \"BMW\",\n    \"plate\": \"EFGH-123 \",\n    \"model\": \"MODEL 2\",\n    \"year\" : \"2015\",\n    \"insurance\": true,\n    \"doors\" : 2,\n    \"type\": \"Car\"\n    },\n    \"salary\": 8500.0,\n    \"bonus\": 300.0,\n    \"type\": \"FullTime\"\n    },\n    {\n    \"@class\": \"ca.lambton.payroll.employee.FixedBasedPartTime\",\n    \"id\": 3,\n    \"name\": \"Akshdeep kaur\",\n    \"age\": 24,\n    \"vehicle\": {\n    \"@class\": \"Motorcycle\",\n    \"id\": 0,\n    \"make\": \"YAMATO\",\n    \"plate\": \"EFGH-875 \",\n    \"model\": \"MODEL 3\",\n    \"year\" : \"2018\",\n    \"insurance\": true,\n    \"type\": \"Motorcycle\"\n    },\n    \"rate\": 20.0,\n    \"hoursWorked\": 165,\n    \"fixedAmount\": 130.0,\n    \"type\": \"PartTime / Fixed Amount\"\n    },\n    {\n    \"@class\": \"ca.lambton.payroll.employee.CommissionBasedPartTime\",\n    \"id\": 4,\n    \"name\": \"Seongyeob\",\n    \"age\": 29,\n    \n    \"rate\": 40.0,\n    \"hoursWorked\": 178,\n    \"commissionPercent\": 20,\n    \"type\": \"PartTime / Commissioned\",\n    \"vehicle\": null\n    }\n    ]\n}\n"
    

    let data = jsondataa.data(using: .utf8)!
    do {
    if let jsonArray = try JSONSerialization.jsonObject(with: data, options : .allowFragments) as? [Dictionary<String,Any>]
    {
    print(jsonArray) // use the json here
    } else {
    print("bad json")
    }
    } catch let error as NSError {
    print(error)
    }
    
    
    func dataparsing() {
        
        let url = Bundle.main.url(forResource: "JsonResponse", withExtension: "json")!
        do {
            let jsonData = try Data(contentsOf: url)
            let json = try JSONSerialization.jsonObject(with: jsonData) as! [[[String: Any]]]
            
            if let question1 = json.first?[0] {
                print( question1["link"] as! String)
            }
            
            if let question2 = json.first?[1] {
                print( question2["link"] as! String)
            }
        }
        catch {
            print(error)
        }
        var data = try JSONDecoder.decode([Welcome].self, from: data!)
        
        for data in Welcome
        {
            print(data.)
        }
    }
}

