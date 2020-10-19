//
//  ChatView.swift
//  Flash Chat SwiftUI
//
//  Created by Kwin Sirikwin on 11/10/20.
//

import SwiftUI

struct ChatView: View {
    @ObservedObject var chatViewModel = ChatViewModel()
    @Binding var isLogin: Bool
    @State private var textMessage = ""
    
    var body: some View {
        //  To set background colour of NavigationView stack
        //  In UIKit, use Interface builder to set background colour of the root view in ViewController.
        //  To achieve this in SwiftUI, use ZStack and Color().edgesIgnoringSafeArea(.all)
        ZStack {
            Color("BrandPurple").edgesIgnoringSafeArea(.all)
            VStack {
                //  List(messages) { message in
                ScrollView {
                    ScrollViewReader { scrollViewProxy in
                        LazyVStack(alignment: .leading) {
                            ForEach(chatViewModel.messages) { message in
                                VStack(alignment: .leading) {
                                    Text(message.sender)
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                    Text(message.text)
                                }
                                .padding(8.0)
                                .id(message.id)
                            }
                        }
                        .onAppear(perform: {
                            scrollViewProxy.scrollTo(chatViewModel.messages.last?.id, anchor: .bottom)
                        })
                    }
                    .background(Color(.systemBackground))
                }
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
        .navigationTitle(Text("⚡️FlashChat"))
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Log Out", action: { isLogin = false })
            }
        }
    }
}


struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(isLogin: .constant(true))
    }
}
