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
        }
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
