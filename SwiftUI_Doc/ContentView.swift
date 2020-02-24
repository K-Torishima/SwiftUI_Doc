//
//  ContentView.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/02/24.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(0 ..< 5) { item in
            Cell()
        }
    }
}


struct Cell:View {
    var body: some View {
        HStack {
            Image(systemName: "star.fill")
            Text("swiftUI")
            Spacer()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//struct ContentView: View {
//    var body: some View {
//        Text("SwiftUI_text")
//            .foregroundColor(.blue)
//            .font(.body)
//            .underline()
//            .background(Color.orange)
//    }
//}
