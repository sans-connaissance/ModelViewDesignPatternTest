//
//  StoreModel.swift
//  ModelViewDesignPatternTest
//
//  Created by David Malicke on 7/8/23.
//

import Foundation
import Observation

@Observable final class StoreModel {
    
    let webservice: Webservice
    var products: [Product] = []
    
    init(webservice: Webservice) {
        self.webservice = webservice
    }
    
    func populateProducts() async throws {
        products = try await webservice.getProducts()
    }
}
