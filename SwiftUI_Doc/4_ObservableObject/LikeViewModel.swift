//
//  LikeViewModel.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/02/24.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import Foundation
import Combine

final class LikeViewModel: ObservableObject {
    @Published var likeNumber: UInt = 0
    func like() {
        likeNumber += 1
        print(likeNumber)
    }
}
