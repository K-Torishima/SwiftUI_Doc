//
//  EventDetailPartView.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/03/09.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import SwiftUI

struct EventDetailPartView: View {
    let eventData: Event!

    var body: some View {
        VStack(alignment: .leading) {
            //  title
            Text(eventData.title)
                .font(.headline)
                .lineLimit(2)
                .padding([.leading,.trailing], 20.0)
                .padding([.top, .bottom], 8.0)
            // sub
            Text(eventData.subTitle)
                .font(.caption)
                .foregroundColor(.gray)
                .lineLimit(3)
                .padding([.leading, .trailing], 20.0)
                .padding(.bottom,12.0)
            // plase
            
            Text(eventData.place)
                .font(.headline)
                .lineLimit(2)
                .padding([.leading, .trailing], 20.0)
                .padding(.bottom, 12.0)
            
            Text(eventData.address)
                .font(.footnote)
                .padding([.leading, .trailing], 20.0)
                .padding(.bottom, 24.0)
            Text(StudyGroupDateFormatter.convertNormalDateString(dateStr: eventData.startDate, isOnlyDate: false) + "~" + StudyGroupDateFormatter.convertNormalDateString(dateStr: eventData.endDate, isOnlyDate: true))
                .font(.subheadline)
                .padding([.leading,.trailing], 20.0)
                .padding(.bottom,48.0)
        }
    }
}

//struct EventDetailPartView_Previews: PreviewProvider {
//    static var previews: some View {
//        EventDetailPartView(eventData: )
//    }
//}
