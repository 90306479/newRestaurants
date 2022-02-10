//
//  circleImage.swift
//  newRestaurants
//
//  Created by 90306479 on 2/9/22.
//

import SwiftUI

struct circleImage: View {
    var image: Image

    var body: some View {
        image
            .resizable()
            .frame(width: 180, height: 180)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 5)
    }
}


struct circleImage_Previews: PreviewProvider {
    static var previews: some View {
        circleImage(image: Image("blacksheep"))
    }
}
