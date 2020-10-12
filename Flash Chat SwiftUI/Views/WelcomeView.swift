//
//  WelcomeView.swift
//  Flash Chat SwiftUI
//
//  Created by Kwin Sirikwin on 10/10/20.
//

import SwiftUI

struct WelcomeView: View {
    @State var textUserName = ""
    @State var textPassword = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                TypeWriterText("⚡️FlashChat")
                    .font(.systemFont(ofSize: 40.0, weight: .black))
                    .alignment(.center)
                    .foregroundColor(.systemTeal)
//                    .fixedSize()
                TextField("User email", text: $textUserName, onEditingChanged: {_ in }, onCommit: {})
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .textContentType(.username)
                    .autocapitalization(.none)
                    .keyboardType(.emailAddress)
                    .padding()
                    .background(Color(.systemBackground))
                SecureField("Password", text: $textPassword, onCommit: {})
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .textContentType(.password)
                    .padding(.horizontal)
                    .background(Color(.systemBackground))
                Spacer()
                NavigationLink(destination: ChatView()) {
                    HStack {
                        Text("Log In")
                        Image(systemName: "arrow.right.square")
                    }
                    .font(.largeTitle)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .background(Color.accentColor)
                }
                .padding()
                .disabled(textUserName.isEmpty || textPassword.isEmpty)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Register")
                }
                .padding()
                .disabled(textUserName.isEmpty || textPassword.isEmpty)
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WelcomeView()
//            WelcomeView().preferredColorScheme(.dark)
        }
    }
}
