//
//  TestSampleView.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/02/27.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import SwiftUI

struct Moto: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var image: String
    
}
let motos:[Moto] = [
    Moto(name: "HONDA", image: "HONDA"),
    Moto(name: "KAWASAKI", image: "KAWASAKI"),
    Moto(name: "YAMAHA", image: "YAMAHA"),
    Moto(name: "SUZUKI", image: "SUZUKI"),
    Moto(name: "BMW", image: "BMW"),
    Moto(name: "883", image: "883"),
    Moto(name: "HONDA", image: "HONDA"),
    Moto(name: "KAWASAKI", image: "KAWASAKI"),
    Moto(name: "YAMAHA", image: "YAMAHA"),
    Moto(name: "SUZUKI", image: "SUZUKI"),
    Moto(name: "BMW", image: "BMW"),
    Moto(name: "883", image: "883")
]

struct TestSampleView: View {
    var motos: [Moto]
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(self.motos) { motos in
                            NavigationLink(destination:Deteil(motosD: motos)) {
                                BoxView(box: motos)
                            }
                        }
                    }
                }
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(self.motos) { box in
                            BoxView(box: box)
                        }
                    }
                }
            }
            .padding(20)
            .navigationBarTitle(Text("SamleTitle"))
            
        }
    }
}


struct animaxtion_Previews: PreviewProvider {
    static var previews: some View {
        TestSampleView(motos: motos)
    }
}


