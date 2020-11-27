//
//  deneme.swift
//  Cimri
//
//  Created by ilkay sever on 27.11.2020.
//

import Foundation
import UIKit

class RequestManager {
    
    private static func createRequest() {
        let url = URL(string: "http://data.fixer.io/api/latest?access_key=def00ce35213bc2c9791fe578840616c")!
        
        let session = URLSession.shared
        
        let taskk = session.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print(error!)
            } else {
                if data != nil {
                    do {
                        let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers)
                        
                        //ASYNC
                        DispatchQueue.main.async {
                            print(jsonResponse)
                        }
                        
                    } catch {
                        print("****************error****************")
                    }
                }
            }
        }
        taskk.resume()
        
//        let tast = session.dataTask(with: url!) { (data, response, error) in
//            if error != nil {
//                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
//                let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
//                alert.addAction(okButton)
//                self.present(alert, animated: true, completion: nil)
//            } else {
//                if data != nil {
//                    do {
//                        let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers)
//
//                        //ASYNC
//                        DispatchQueue.main.async {
//                            print(jsonResponse)
//                        }
//
//                    } catch {
//                        print("error")
//                    }
//                }
//            }
//            task.resume()
//        }
    }
    
}
