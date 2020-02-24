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
    var body: some View {
        NavigationView {
            Form {
                NavigationLink(destination: ToggleView()) {
                    Text("ToggleView")
                }
                
                NavigationLink(destination: LikeView(viewModel: LikeViewModel())) {
                    Text("LikeView")
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
        TestView().environmentObject(UserSettings())
    }
}
