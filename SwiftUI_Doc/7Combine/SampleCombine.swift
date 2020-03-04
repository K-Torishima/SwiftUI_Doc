//
//  SampleCombine.swift
//  SwiftUI_Doc
//
//  Created by 鳥嶋晃次 on 2020/03/05.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import SwiftUI
import Combine

struct SampleCombine: View {
    @State private var username: String = ""
    var body: some View {
        VStack {
            TextField("Placeholder", text: $username, onEditingChanged: { (changed) in
                print("onEditingChanged: \(changed)")
            }, onCommit: {
                print("onCommit")
            })
        }
        .padding(.horizontal)
    }
}


struct SampleCombine_Previews: PreviewProvider {
    static var previews: some View {
        SampleCombine()
    }
}
