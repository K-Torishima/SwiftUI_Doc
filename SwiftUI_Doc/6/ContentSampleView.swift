//
//  ContentSampleView.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/03/01.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import SwiftUI
import Combine

struct ContentSampleView: View {
    
    @Binding private var chosenColor: Color
    @State private var isDragging:Bool = false
    @State private var startLocation:CGFloat = .zero
    @State private var dragOffset:CGSize = .zero
    
    init (chosenColor: Binding <Color>) {
        self._chosenColor = chosenColor
    }
    
    private var colors: [Color] = {
        
        let huevalues = Array(0...359)
        
        return huevalues.map {
            Color(UIColor(hue: CGFloat($0) / 359.0,
                          saturation: 1.0,
                          brightness: 1.0,
                          alpha: 1.0))
        }
    }()
    
    private var circleWidth: CGFloat {
          isDragging ? 35 : 15
      }
    
    private var lineGradientHeight: CGFloat = 800
    
    private var crrentColor: Color {
        Color(UIColor.init(hue: self.nomrmalizeGesture() / lineGradientHeight, saturation: 1.0, brightness: 1.0, alpha: 1.0))
    }
    
    private func nomrmalizeGesture() -> CGFloat {
        let offset = startLocation + dragOffset.height
        let maxY = max(0, offset)
        let minY = min(maxY, lineGradientHeight)
        
        return minY
    }
    
    
    var body: some View {
        ZStack(alignment:.top) {
            LinearGradient(gradient: Gradient(colors: colors),
                           startPoint: .top,
                           endPoint: .bottom)
                .frame(width: 10,
                       height: lineGradientHeight)
                .cornerRadius(5)
                .shadow(radius: 8)
                .overlay(
                    RoundedRectangle(cornerRadius: 5).stroke(Color.white,lineWidth: 2.0)
            )
            .gesture(
                DragGesture()
                    .onChanged({ (value) in
                        self.dragOffset = value.translation
                        self.startLocation = value.startLocation.y
                        self.chosenColor = self.crrentColor
                        self.isDragging = true
                    })
                    .onEnded({ (_) in
                        self.isDragging = false
                    })
            )
            
            Circle()
                .foregroundColor(self.crrentColor)
                .frame(width: self.circleWidth, height: self.circleWidth, alignment: .center)
            .shadow(radius: 5)
                .overlay(
                    RoundedRectangle(cornerRadius: self.circleWidth / 2.0).stroke(Color.black, lineWidth: 2.0))
                .offset(x:self.isDragging ? -self.circleWidth : 0.0, y: self.nomrmalizeGesture() - self.circleWidth / 2)
                .animation(Animation.spring().speed(2))
            
        }
    }
}


struct ContentSampleView_Previews: PreviewProvider {
    static var previews: some View {
        ContentSampleView(chosenColor: Binding.constant(Color.white))
    }
}
