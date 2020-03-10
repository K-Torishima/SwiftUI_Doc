//
//  StudyGroupEventFetcher.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/03/09.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import Foundation

class StudyGroupEventFetcher {
    private let urlLink = "https://connpass.com/api/v1/event/?keyword=YUMEMI"
    
    func fetchEventData(completion:@escaping ([Event]) -> Void) {
        URLSession.shared.dataTask(with: URL(string: urlLink)!) { (data, response, error) in
            guard let data = data else { return }
            let decoder: JSONDecoder = JSONDecoder()
            do {
                let searchResultData = try decoder.decode(StudyGroup.self, from: data)
                DispatchQueue.main.async {
                    completion(searchResultData.events.reversed())
                }
            } catch {
                print("json convert failed in JSONDecoder. " + error.localizedDescription)
            }
        }.resume()
    }
}
