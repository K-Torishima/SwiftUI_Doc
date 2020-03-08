//
//  LoginViewModel.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/03/08.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import Foundation
import Combine


final class LoginViewModel: ObservableObject {
    
    // private
    private let authProvider: AuthProviderProtocol
    @Published private var isBusy: Bool = false
    
    
    // Input
    @Published var userId: String = ""
    @Published var password: String = ""
    
    // output
    @Published private(set) var canLogin: Bool = false
    @Published private(set) var validationText: String = ""
    
    // Action
    func login() -> AnyPublisher<User, Error> {
        isBusy = true
        validationText = ""
        
        return authProvider.login(userId: userId, password: password)
            .receive(on: RunLoop.main)
            .handleEvents( receiveCompletion: { [weak self] conpletion in
                switch conpletion {
                case .finished:
                    self?.validationText = ""
                case .failure:
                    self?.validationText = "Incorrect ID or password"
                    
                }
                
                self?.isBusy = false
            })
            .eraseToAnyPublisher()
    }
    
    init(authProvider:AuthProviderProtocol = AuthProvider()) {
        self.authProvider = authProvider
        
        _ = Publishers
            .CombineLatest3($userId,$password,$isBusy)
            .map { (userId,password,isBusy) in
                (userId.isEmpty || password.isEmpty || isBusy)
                
        }
        .receive(on: RunLoop.main)
        .assign(to: \.canLogin, on: self)
    }
    
}



