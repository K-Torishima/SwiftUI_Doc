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
    var title: String
    var subTitle: String
    var eventUrl: String
    var hashTag: String
    var startDate: String
    var endDate: String
    var place: String
    var address: String
    var lat: String
    var lon: String
    var ownerDisplayName: String
    
    enum CodingKeys: String, CodingKey {
        case id = "event_id"
        case title = "title"
        case subTitle = "catch"
        case eventUrl = "event_url"
        case hashTag = "hash_tag"
        case startDate = "started_at"
        case endDate = "ended_at"
        case place = "place"
        case address = "address"
        case lat = "lat"
        case lon = "lon"
        case ownerDisplayName = "owner_display_name"
    }
}
