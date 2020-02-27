//
//  BikeDetail.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/02/24.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import SwiftUI

struct BikeDetail: View {
    var bike: Bike
    var body: some View {
        VStack {
            Section(header: Text("画像")) {
                Image(bike.imageName)
                    .resizable()
                    .frame(height: 500)
                    .scaledToFit()
            }

            ZStack(alignment: .bottomTrailing) {
                
                Form {
                    Section(header: Text("タイプ")) {
                        Text(bike.type)
                    }
                    
                    Section(header: Text("概要")) {
                        Text(bike.description)
                    }
                }
            }
            
        }
        .navigationBarTitle(Text(bike.bikeName), displayMode: .inline)
    }
}

struct BikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                BikeDetail(bike: bikes[0])
            }
            NavigationView {
                BikeDetail(bike: bikes[5])
            }
        }
    }
}
