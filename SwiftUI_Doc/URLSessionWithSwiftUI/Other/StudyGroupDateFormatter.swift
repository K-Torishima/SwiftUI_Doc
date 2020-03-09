//
//  StudyGroupDateFormatter.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/03/09.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import Foundation

final class StudyGroupDateFormatter: DateFormatter {
    
    class func convertNormalDateString(dateStr: String, isOnlyDate: Bool) -> String {
        let fomatter = ISO8601DateFormatter()
        let date = fomatter.date(from: dateStr)
        return convertDateToString(date: date!, isOnlyDate: isOnlyDate)
    }
    
    class func convertDateToString(date: Date, isOnlyDate: Bool) -> String  {
        let formatter = DateFormatter()
        formatter.dateStyle = isOnlyDate ? .none: .short
        formatter.timeStyle = .short
        formatter.locale = Locale(identifier: "ja_JP")
        return formatter.string(from: date)
    }
}
