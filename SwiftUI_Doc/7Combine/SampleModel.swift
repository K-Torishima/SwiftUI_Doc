//
//  SampleModel.swift
//  SwiftUI_Doc
//
//  Created by 鳥嶋晃次 on 2020/03/05.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import Foundation
import Combine

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

    // https://qiita.com/akifumi1118/items/aa5734b1f14d57072456
    
}
