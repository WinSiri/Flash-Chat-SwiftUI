//
//  WelcomeView.swift
//  Flash Chat SwiftUI
//
//  Created by Kwin Sirikwin on 10/10/20.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Spacer()
            TypeWriterText("⚡️FlashChat")
                .font(.systemFont(ofSize: 40.0, weight: .black))
                .alignment(.center)
                .foregroundColor(.systemTeal)
            Spacer()
            Button(action: {}) {
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
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Register")
            }.padding()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WelcomeView()
            WelcomeView()
                .preferredColorScheme(.dark)
        }
    }
}
