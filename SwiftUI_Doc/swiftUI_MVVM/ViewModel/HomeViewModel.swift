//
//  HomeViewModel.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/03/08.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import Foundation
import Combine

final class HomeViewModel: ObservableObject {
    
    private let authProvider: AuthProviderProtocol
    
    @Published private(set) var canLogin: Bool = true
    
    func logout() -> AnyPublisher<Void, Error> {
        canLogin = false
        return authProvider.logout()
            .receive(on: RunLoop.main)
            .handleEvents(receiveCompletion: { [weak self] completion in
                self?.canLogin = true
                
            })
            .eraseToAnyPublisher()
        
    }
    
    init(authProvider: AuthProviderProtocol = AuthProvider()) {
        self.authProvider = authProvider
    }
}
