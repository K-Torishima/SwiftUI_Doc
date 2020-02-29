//
//  TestSampleView.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/02/27.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import SwiftUI

struct TestSampleView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination:SubView()) {
                Text("Show")
            }
        }
        
    }
}


struct animaxtion_Previews: PreviewProvider {
    static var previews: some View {
        TestSampleView()
    }
}


