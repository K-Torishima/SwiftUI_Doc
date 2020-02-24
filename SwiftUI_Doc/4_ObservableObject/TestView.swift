//
//  TestView.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/02/24.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import SwiftUI

struct TestView: View {
    @EnvironmentObject var settings: UserSettings
    var bikes: [Bike]
    var body: some View {
        NavigationView {
            
            Form {
                
                List(bikes) { bike in
                    NavigationLink(destination: BikeDetail(bike: bike)) {
                        BikeItem(bike: bike)
                    }
                }
                NavigationLink(destination: SettingView()) {
                    Text("Setting Theme Color")
                }
            }
                
            .navigationBarTitle("State and Data Flow", displayMode: .inline)
            .foregroundColor(Color(settings.color))
        }
    }
}

struct TestVIew_Previews: PreviewProvider {
    static var previews: some View {
        TestView(bikes: bikes).environmentObject(UserSettings())
    }
}


//                NavigationLink(destination: ToggleView()) {
//                    Text("ToggleView")
//                }
//
//                NavigationLink(destination: LikeView(viewModel: LikeViewModel())) {
//                    Text("LikeView")
//                }
