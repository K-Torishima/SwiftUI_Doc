//
//  SampleModel.swift
//  SwiftUI_Doc
//
//  Created by 鳥嶋晃次 on 2020/03/05.
//  Copyright © 2020 koji torishima. All rights reserved.
// https://github.com/akifumi/mvvm-with-combine-in-swiftui/blob/master/CombineSample/ContentView.swift

import SwiftUI
import Combine


final class SampleViewModel: ObservableObject, Identifiable {
    
    struct  StartText {
        let content: String
        let color: Color
        
    }
    
    
    @Published var username: String = ""
    @Published var status: StartText = StartText(content: "NG", color: .red)
    
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
    
    private var cancellbles: [AnyCancellable] = []
    
    private(set) lazy var onApper:() -> Void = { [weak self] in
        guard let self = self else { return }
        self.validateUsername
            .sink(receiveValue: {[weak self] (value) in
                if let value = value {
                    self?.username = value
                } else {
                    print("validateUsername.receveValue: Invalid username")
                }
            })
            .store(in: &self.cancellbles)
        
        self.validateUsername
            .map {(value) -> StartText in
                if let _ = value {
                    return StartText(content: "OK", color: .green)
                } else {
                    return StartText(content: "NG", color: .red)
                }
        }
        .sink(receiveValue: { [weak self] (value) in
            self?.status = value
            
        })
            .store(in: &self.cancellbles)
        
    }
    
    private(set) lazy var onDisapper: () -> Void = { [weak self] in
        guard let self = self else { return }
        self.cancellbles.forEach { $0.cancel() }
        self.cancellbles = []
    }
}
