//
//  ColorView.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/03/01.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import SwiftUI

struct ColorView: View {
    @State var currentColor: Color = .clear
    var body: some View {
        ZStack(alignment: .topTrailing) {
            currentColor
            ContentSampleView(chosenColor: $currentColor)
                .frame(width: 50, height: 770)
                .offset(x: 0, y: 75)
        }.edgesIgnoringSafeArea(.all)
        
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView()
    }
}
