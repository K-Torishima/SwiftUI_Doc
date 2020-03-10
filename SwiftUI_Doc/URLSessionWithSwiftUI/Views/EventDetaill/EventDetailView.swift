//
//  EventDetailView.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/03/09.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import SwiftUI

struct EventDetailView: View {
    @State private var showModal = false
    var eventData: Event
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                MapVeiw(eventData: self.eventData)
                    .frame(height: 300.0)
                EventDetailPartView(eventData: self.eventData)
                
                Button(action: {
                    self.showModal.toggle()
                }) {
                    Text("イベントページ")
                        .font(Font.body.bold())
                    .padding()
                        .foregroundColor(.white)
                        .background(Color.red)
                        .cornerRadius(5.0)
                    
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .sheet(isPresented: $showModal) {
                    SafariView(url: URL(string: self.eventData.eventUrl))
                        .edgesIgnoringSafeArea(.bottom)
                    
                }
            }
        }
        .navigationBarTitle("Event Detall", displayMode: .large)
        
    }
}

struct EventDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailView(eventData: mockEventsData[0])
    }
}
