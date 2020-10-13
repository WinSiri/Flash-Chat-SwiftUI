//
//  WelcomeView.swift
//  Flash Chat SwiftUI
//
//  Created by Kwin Sirikwin on 10/10/20.
//

import SwiftUI

struct WelcomeView: View {
    @State var textUserName = "foo@bar.com"
    @State var textPassword = ""
    @State var isSuccessfulLogin = false
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                TypeWriterText("⚡️FlashChat")
                    .font(.systemFont(ofSize: 40.0, weight: .black))
                    .alignment(.center)
                    .foregroundColor(.systemTeal)
                //  .fixedSize()
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
                //  Use NavigationLink(isActive: ) binding to make pushing and popping view
                Button(action: { isSuccessfulLogin = true }) {
                    NavigationLink(destination: ChatView(isLogin: $isSuccessfulLogin), isActive: $isSuccessfulLogin) {
                        HStack {
                            Text("Log In")
                            Image(systemName: "arrow.right.square")
                        }
                    }
                    .font(.largeTitle)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .background(Color.accentColor)
                }
                .padding()
                .disabled(textUserName.isEmpty || textPassword.isEmpty)
                Button(action: { }) {
                    Text("Register")
                }
                .padding()
                .disabled(textUserName.isEmpty || textPassword.isEmpty)
            }
        }
        //  Use StackNavigationViewStyle to prevent Split view on iPad
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WelcomeView()
//            WelcomeView().preferredColorScheme(.dark)
//            WelcomeView().previewDevice("iPad Pro (11-inch) (1st generation)")
        }
    }
}
