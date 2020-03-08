//
//  AuthProviderProtocol.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/03/08.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import Foundation
import Combine

enum AuthError:Error {
    case invalidIdOrPassword
}


protocol AuthProviderProtocol {
    func login(userId: String, password: String) -> Future<User, Error>
    func logout() -> Future<Void, Error>
}
