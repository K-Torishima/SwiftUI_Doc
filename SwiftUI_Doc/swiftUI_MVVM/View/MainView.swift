//
//  MainView.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/03/08.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import SwiftUI
import Combine

struct MainView: View {
     @EnvironmentObject var session: Session
    var body: some View {
           VStack {
            if self.session.isLogin {
                HomeView()
                    .environmentObject(self.session)
            } else {
                LoginView()
                    .environmentObject(self.session)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(Session())
    }
}
