//
//  SettingView.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/02/24.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import SwiftUI

struct SettingView: View {
    @EnvironmentObject var settings: UserSettings
    var body: some View {
        HStack {
            Button(action: {
                self.settings.color = .red
            }) {
                Text("Red")
                    .foregroundColor(.white)
                    .font(.largeTitle)
            }
        .padding()
            .background(Color.red)
            
            Button(action: {
                self.settings.color = .blue
            }) {
                Text("Blue")
                    .foregroundColor(.white)
                    .font(.largeTitle)
            }
            .padding()
            .background(Color.blue)
            
            Button(action: {
                self.settings.color = .green
            }) {
                Text("Green")
                    .foregroundColor(.white)
                    .font(.largeTitle)
            }
            .padding()
            .background(Color.green)
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
