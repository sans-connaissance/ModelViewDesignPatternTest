//
//  ContentView.swift
//  ModelViewDesignPatternTest
//
//  Created by David Malicke on 7/8/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var storeModel: StoreModel
    
    private func populateProducts() async {
        do {
            try await storeModel.populateProducts()
        } catch {
            print(error)
        }
    }
    
    var body: some View {
        VStack {
            List(storeModel.products) { product in
                Text(product.title)
            }
        }.task {
            await populateProducts()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(StoreModel(webservice: Webservice()))
    }
}
