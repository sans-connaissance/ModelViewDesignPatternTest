//
//  Product.swift
//  ModelViewDesignPatternTest
//
//  Created by David Malicke on 7/8/23.
//

import Foundation

struct Product: Decodable, Identifiable {
    let id: Int
    let title: String
    let price: Double
    
}
