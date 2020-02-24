//
//  LikeView.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/02/24.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import SwiftUI
import Combine

struct LikeView: View {

    @ObservedObject var viewModel:LikeViewModel
   
    var body: some View {
        VStack {
            Image("BMW")
            .resizable()
                .frame(width: 300, height: 300, alignment: .center)
            Text("Like:\(viewModel.likeNumber)")
            
            Button("LIKE!") {
                self.viewModel.like()
            }
            .frame(width: 100, height: 50, alignment: .center)
            .background(Color.green)
            .foregroundColor(Color.white)
            .cornerRadius(10)
        }
    }
}

struct LikeView_Previews: PreviewProvider {
    static var previews: some View {
        LikeView(viewModel: LikeViewModel())
    }
}
