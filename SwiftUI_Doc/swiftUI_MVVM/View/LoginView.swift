//
//  LoginView.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/03/08.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import SwiftUI
import Combine

struct LoginView: View {
    @EnvironmentObject var session: Session
    @ObservedObject private var vm = LoginViewModel()
    
    var body: some View {
        VStack {
            Text("Learning SwifUI-MVVM")
                .font(.title)
            
            TextField("User ID", text: $vm.userId)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .autocapitalization(UITextAutocapitalizationType.none)
            
            SecureField("Password", text: $vm.password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            if (!vm.validationText.isEmpty) {
                Text(vm.validationText)
                    .font(.caption)
                    .foregroundColor(Color.red)
            }
            
            Button(action: {
                _ = self.vm.login()
                    .sink(receiveCompletion: { completion in
                        print("receiveCompletion:", completion)
                    }, receiveValue: { user in
                        print("userId:", user.id)
                        self.session.user = user
                        self.session.isLogin = true
                    })
            }) {
                Text(/*@START_MENU_TOKEN@*/"Login"/*@END_MENU_TOKEN@*/)
            }
            .disabled(!vm.canLogin)
            
        }.padding()
    }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(Session())
    }
}
