//
//  AuthProvider.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/03/08.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import Foundation
import Combine

final class AuthProvider: AuthProviderProtocol {
    func login(userId: String, password: String) -> Future<User, Error> {
        
        return Future<User,Error> { promise in
            DispatchQueue.global().async {
                Thread.sleep(forTimeInterval: 1.0)
                if userId == "foobar@example.com" && password == "password" {
                    promise(.success(User(id: userId, name: "foobar")))
                } else {
                    promise(.failure(AuthError.invalidIdOrPassword))
                }
            }
            
        }
    }
    
    func logout() -> Future<Void, Error> {
        return Future<Void, Error> { promise in
            DispatchQueue.global().async {
                Thread.sleep(forTimeInterval: 1.0)
                promise(.success(()))
            }
        }
    }
    
    
}
