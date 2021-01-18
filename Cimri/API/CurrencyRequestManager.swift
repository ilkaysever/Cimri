//
//  deneme.swift
//  Cimri
//
//  Created by ilkay sever on 27.11.2020.
//

import Foundation
import UIKit

class RequestManager {
    
    static let shared = RequestManager()
    
    func getCurrency(accesKey: String, completion: @escaping((CurrencyModel?, Error?) ->  Void)) {
        let url = URL(string: "http://data.fixer.io/api/latest?access_key=\(accesKey)")!
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print(error!)
                completion(nil, error)
            } else {
                if data != nil {
                    do {
                        let decoder = JSONDecoder()
                        let response = try decoder.decode(CurrencyModel.self, from: data!)
                        completion(response, nil)
                        print(response)
                    } catch {
                        print("****************error****************")
                    }
                }
            }
        }
        task.resume()
    }
    
}
