//
//  ChatView.swift
//  Flash Chat SwiftUI
//
//  Created by Kwin Sirikwin on 11/10/20.
//

import SwiftUI

struct ChatView: View {
    @State var textMessage = ""
    
    var body: some View {
        ZStack {
            Color("BrandPurple").edgesIgnoringSafeArea(.all)
            VStack {
//                List(messages) { message in
                ScrollView {
                    LazyVStack(alignment: .leading) {
                        ForEach(messages) { message in
                            VStack(alignment: .leading) {
                                Text(message.sender)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                Text(message.text)
                            }
                            .padding(8.0)
                        }
                    }
                }
                .background(Color(.systemBackground))
                HStack {
                    TextField("Write a message..", text: $textMessage, onEditingChanged: {_ in }, onCommit: {})
                        .padding(8.0)
                        .background(Color(.systemBackground))
                    Button(action: {}) {
                        Image(systemName: "paperplane.fill")
                            .padding()
                    }
                    .accentColor(.white)
                }
                .padding(.horizontal, 8.0)
                .background(Color("BrandPurple"))
            }
        }
        .navigationBarTitle(Text("⚡️FlashChat"))
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Text("Log Out")
            }
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
