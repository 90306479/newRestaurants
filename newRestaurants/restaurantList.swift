//
//  restaurantList.swift
//  newRestaurants
//
//  Created by 90306479 on 2/9/22.
//

import SwiftUI

struct restaurantList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false

    var filteredRestaurants: [Restaurant] {
        modelData.restaurants.filter { restaurant in
            (!showFavoritesOnly || restaurant.isFavorite)
        }
    }

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Show favorites only")
                }

                ForEach(filteredRestaurants) { restaurant in
                    NavigationLink {
                        restaurantDetail(restaurant: restaurant)
                    } label: {
                        restaurantRow(restaurant: restaurant)
                    }
                }
            }
            .navigationTitle("Restaurants")
        }
    }
}

struct restaurantList_Previews: PreviewProvider {
    static var previews: some View {
        restaurantList()
            .environmentObject(ModelData())
    }
}
