//
//  Deteil.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/02/29.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import SwiftUI

struct Deteil: View {
    var motosD: Moto
    var body: some View {
        Section(header: Text("画像")) {
            Image(motosD.image)
                .resizable()
                .scaledToFit()
            
        }
    }
}

//struct Deteil_Previews: PreviewProvider {
//    static var previews: some View {
//       
//    }
//}
