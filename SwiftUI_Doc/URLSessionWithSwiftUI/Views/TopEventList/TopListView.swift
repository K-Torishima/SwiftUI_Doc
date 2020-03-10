//
//  TopListView.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/03/10.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import SwiftUI

struct TopListView: View {
    @ObservedObject private var toplistVM = TopListViewModel()
    
    var body: some View {
        NavigationView {
            List(toplistVM.eventData) { event in
                NavigationLink(destination: EventDetailView(eventData: event)) {
                    EventRowView(eventData: event)
                }
                
            }
            .navigationBarTitle(Text("一覧"))
        }
        
    }
}

struct TopListView_Previews: PreviewProvider {
    static var previews: some View {
        TopListView()
    }
}
