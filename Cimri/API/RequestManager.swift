//
//  RequestManager.swift
//  Cimri
//
//  Created by ilkay sever on 27.11.2020.
//

import Alamofire

//class RequestManager {
//
//    static var apiUrl: String {
//        return "http://www.omdbapi.com"
//    }
//    
//    private static func createRequest(_ request: RequestDelegate) -> DataRequest {
//        print("\n\nRequest Path: \(request.path)")
//        print("Request Method: \(request.method.rawValue)")
//        print("Request Parameters:")
//        print(request.parameters ?? "nil")
//
//        let request  = AF.request(apiUrl+request, method: request.method, parameters: request.parameters, encoding: URLEncoding.default, headers: nil)
//
//        request.validate()
//        request.responseData { (response) in
//            if let value = response.result.value {
//                if let json = String(data: value, encoding: .utf8) {
//                    print("Response JSON: \n\(json)")
//                }
//            }
//        }
//        return request
//    }
//
//}
