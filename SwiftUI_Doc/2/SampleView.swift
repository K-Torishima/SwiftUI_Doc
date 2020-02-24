//
//  SampleView.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/02/24.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import SwiftUI

struct SampleView: View {
    var bikes: [Bike]
    var body: some View {
        
        NavigationView {
            List(bikes) { bike in
                NavigationLink(destination: BikeDetail(bike: bike)) {
                    BikeItem(bike: bike)
                }
            }
        .navigationBarTitle("BikeList")
        }
    }
}

struct SampleView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SampleView(bikes: bikes)
                .environment(\.colorScheme,.dark)
                .previewDevice(.init(rawValue: "iPhone SE"))
            SampleView(bikes: bikes)
                .environment(\.colorScheme,.light)
        }
       
    }
}
