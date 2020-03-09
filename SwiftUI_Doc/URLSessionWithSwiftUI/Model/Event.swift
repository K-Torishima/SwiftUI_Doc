//
//  Event.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/03/09.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import Foundation

struct Event:Decodable, Identifiable {
    var id: Int
    var subTitle: String
    var eventUrl: String
    
}
