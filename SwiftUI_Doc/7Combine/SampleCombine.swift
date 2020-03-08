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
    @ObservedObject var viewModel:SampleViewModel
    
    var body: some View {
        VStack {
            HStack {
                Text($viewModel.status.wrappedValue.content)
                    .foregroundColor($viewModel.status.wrappedValue.color)
                Spacer()
                
            }
            TextField("Pleceholder", text: $viewModel.username, onEditingChanged: { (changed) in
                print("onEditingChanged: \(changed)")
            }) {
                print("onCommit")
            }
            
        }
        .padding(.horizontal)
        .onAppear(perform: viewModel.onApper)
        .onDisappear(perform: viewModel.onDisapper)
    }
}


struct SampleCombine_Previews: PreviewProvider {
    static var previews: some View {
        SampleCombine(viewModel: SampleViewModel())
    }
}
