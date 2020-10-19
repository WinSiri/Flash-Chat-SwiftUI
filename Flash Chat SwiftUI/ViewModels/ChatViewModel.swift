//
//  ChatViewModel.swift
//  Flash Chat SwiftUI
//
//  Created by Kwin Sirikwin on 19/10/20.
//

import Foundation

class ChatViewModel: ObservableObject {
    @Published var messages: [Message]
    
    init() {
        messages = testMessages
    }

    func addNewMessage(_ newText: String) {
        let newMessage = Message(sender: "foo@bar.com", text: newText)
        messages.append(newMessage)
    }
}
