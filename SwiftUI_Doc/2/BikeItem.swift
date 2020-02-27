//
//  BikeItem.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/02/24.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import SwiftUI

struct BikeItem: View {
    var bike: Bike
    var body: some View {
        HStack {
            Image(bike.imageName)
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(10)
            
            Text(bike.maker)
                .font(.title)
                .fontWeight(.bold)
            
            Spacer()
        }
    }
}

struct BikeItem_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ContentSizeCategory.allCases, id: \.self) { category in
            BikeItem(bike: bikes[5])
                .previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, category)
            .previewDisplayName("\(category)")
        }
    }
}
