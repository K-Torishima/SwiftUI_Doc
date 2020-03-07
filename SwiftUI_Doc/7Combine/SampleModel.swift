//
//  SampleModel.swift
//  SwiftUI_Doc
//
//  Created by 鳥嶋晃次 on 2020/03/05.
//  Copyright © 2020 koji torishima. All rights reserved.
// https://github.com/akifumi/mvvm-with-combine-in-swiftui/blob/master/CombineSample/ContentView.swift

import Combine
import SwiftUI

final class SampleViewModel: ObservableObject, Identifiable {
    @Published var username: String = ""
    
    private var validateUsername: AnyPublisher<String?, Never> {
        return $username
            .debounce(for: 0.1, scheduler: RunLoop.main)
            .removeDuplicates()
            .flatMap {(username) -> AnyPublisher<String?, Never> in
                Future<String?, Never> {(promise) in
                    if 1...10 ~= username.count {
                        promise(.success(username))
                    } else {
                        promise(.success(nil))
                        
                    }
                }
            .eraseToAnyPublisher()
        }
    .eraseToAnyPublisher()
    }
    
    struct  StertText {
        let content: String
        let color: Color
        
    }
    
    @Published var status: StertText = StertText(content: "NG", color: .red)
    

 
    
}
