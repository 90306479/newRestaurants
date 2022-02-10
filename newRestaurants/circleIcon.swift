//
//  circleIcon.swift
//  newRestaurants
//
//  Created by 90306479 on 2/10/22.
//

import SwiftUI

struct circleIcon: View {
    var image: Image

    var body: some View {
        image
            .resizable()
            .frame(width: 50, height: 50)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay {
                Circle().stroke(.white, lineWidth: 2)
            }
            .shadow(radius: 4)
    }
}

struct circleIcon_Previews: PreviewProvider {
    static var previews: some View {
        circleIcon(image: Image("blacksheep"))
    }
}
