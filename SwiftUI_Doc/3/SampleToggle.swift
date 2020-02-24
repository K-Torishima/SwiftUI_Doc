//
//  SampleToggle.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/02/24.
//  Copyright © 2020 koji torishima. All rights reserved.
// 変更通知がめっちゃ楽

import SwiftUI

struct ToggleModel {
    var isWifiOpen: Bool = false {
        willSet {
            print("wifi \(isWifiOpen)")
        }
    }
}

struct SampleToggle: View {
    @State var model = ToggleModel()
    var body: some View {
        VStack {
            Toggle(isOn: $model.isWifiOpen, label:  {
                Image(systemName: "wifi")
                Text("wifi")
                Text("\(model.isWifiOpen ? "ON" : "OFF")になっています")
            })
        }
        .padding()
    }
}

struct SampleToggle_Previews: PreviewProvider {
    static var previews: some View {
        SampleToggle()
    }
}
