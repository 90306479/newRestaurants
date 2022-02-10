//
//  restaurantDetail.swift
//  newRestaurants
//
//  Created by 90306479 on 2/9/22.
//

import SwiftUI

struct restaurantDetail: View {
    @EnvironmentObject var modelData: ModelData
    var restaurant: Restaurant
    
    var restaurantIndex: Int {
        modelData.restaurants.firstIndex(where: { $0.id == restaurant.id })!
    }

    var body: some View {
        ScrollView {
            ZStack{
            mapView(coordinate: restaurant.locationCoordinate)
                .frame(height: 380)
                VStack{
                HStack {
                    Spacer()
                    circleImage(image: restaurant.image)
                }
                    Spacer()
                }
             //   .offset(y: -140)
             //   .padding(.bottom, -160)
            }

            VStack(alignment: .leading) {
                HStack {
                    Text(restaurant.name)
                        .font(.title)
                    favoriteButton(isSet: $modelData.restaurants[restaurantIndex].isFavorite)
                }

                HStack {
                    VStack {
                        Text(restaurant.street)
                        Text(restaurant.streetSecond)
                    }
                    Spacer()
                    VStack {
                        Text(restaurant.city)
                        Text(" ")
                    }
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text(restaurant.name)
                    .font(.title2)
                    .padding(.bottom, 3)
                Text(restaurant.description)
            }
            .padding()
        }
        .navigationTitle(restaurant.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}
struct restaurantDetail_Previews: PreviewProvider {
    static let modelData = ModelData()

    static var previews: some View {
        restaurantDetail(restaurant: modelData.restaurants[0])
            .environmentObject(modelData)
    }
}
