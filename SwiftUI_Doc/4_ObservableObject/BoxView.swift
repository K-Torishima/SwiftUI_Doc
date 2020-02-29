//
//  SubView.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/02/29.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import SwiftUI

struct BoxView: View {
    let box: Moto
    var body: some View {
        VStack {
            Image(box.image)
            .resizable()
            .cornerRadius(20)
                .frame(width: 100, height: 100,alignment: .center)
            Text(box.name)
                .font(.subheadline)
                .fontWeight(.bold)
        }
    }
}

//struct SubView_Previews: PreviewProvider {
//    static var previews: some View {
//        BoxView(box: Moto)
//    }
//}
