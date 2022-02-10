//
//  Restaurant.swift
//  newRestaurants
//
//  Created by 90306479 on 2/9/22.
//

import Foundation
import SwiftUI
import CoreLocation

struct Restaurant: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var city: String
    var street: String
    var description: String
    var isFavorite: Bool
    var streetSecond: String

    private var imageName: String
    var image: Image {
        Image(imageName)
    }

    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
