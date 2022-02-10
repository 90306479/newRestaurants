//
//  restaurantRow.swift
//  newRestaurants
//
//  Created by 90306479 on 2/9/22.
//

import SwiftUI

struct restaurantRow: View {
    var restaurant: Restaurant

    var body: some View {
        HStack {
//            restaurant.image
//                .resizable()
//                .frame(width: 50, height: 50)
            
            circleIcon(image: restaurant.image)
                .padding(10)
            Text(restaurant.name)

            Spacer()

            if restaurant.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct restaurantRow_Previews: PreviewProvider {
    static var restaurants = ModelData().restaurants

    static var previews: some View {
        Group {
            restaurantRow(restaurant: restaurants[0])
            restaurantRow(restaurant: restaurants[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
