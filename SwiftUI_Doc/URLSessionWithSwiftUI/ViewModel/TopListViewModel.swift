//
//  TopListViewModel.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/03/09.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import Foundation

class TopListViewModel: ObservableObject {
    let fetcher = StudyGroupEventFetcher()
    @Published var eventData: [Event] = []
    
    init() {
        self.fetcher.fetchEventData { (events) in
            self.eventData = events
        }
    }
}
