//
//  CurrencyModel.swift
//  Cimri
//
//  Created by ilkay sever on 27.11.2020.
//

import Foundation

struct CurrencyModel: Codable {
    var success: Bool!
    var timestamp: Int!
    var base: String!
    var date: String!
    var rates: [String: Double]!
}
