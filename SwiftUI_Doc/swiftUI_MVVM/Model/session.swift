//
//  session.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/03/08.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import Combine

final class Session: ObservableObject {
    @Published var isLogin: Bool
    @Published var user: User?
    
    init(isLogin: Bool = false, user: User? = nil) {
        self.isLogin = isLogin
        self.user = user
    }
}
