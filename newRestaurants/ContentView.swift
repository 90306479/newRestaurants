//
//  ContentView.swift
//  newRestaurants
//
//  Created by 90306479 on 2/8/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        restaurantList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
