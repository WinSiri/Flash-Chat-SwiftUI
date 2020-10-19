//
//  Message.swift
//  Flash Chat SwiftUI
//
//  Created by Kwin Sirikwin on 11/10/20.
//

import Foundation

struct Message: Identifiable, Equatable {
    internal init(sender: String, text: String) {
        self.sender = sender
        self.text = text
    }
    
    let id: String = UUID().uuidString
    
    let sender: String
    let text: String
}

let testMessages: [Message] =
    [
        Message(sender: "foo@bar.com", text: "Hey!"),
        Message(sender: "john@bar.com", text: "Hello!"),
        Message(sender: "john@bar.com", text: "What's up?"),
        Message(sender: "foo@bar.com", text: "This is a really, really, really, really, really, really, really, really, really long message.."),
        Message(sender: "foo@bar.com", text: "Hey!"),
        Message(sender: "john@bar.com", text: "Hello!"),
        Message(sender: "john@bar.com", text: "What's up?"),
        Message(sender: "foo@bar.com", text: "This is a really, really, really, really, really, really, really, really, really long message.."),
        Message(sender: "foo@bar.com", text: "Hey!"),
        Message(sender: "john@bar.com", text: "Hello!"),
        Message(sender: "john@bar.com", text: "What's up?"),
        Message(sender: "foo@bar.com", text: "This is a really, really, really, really, really, really, really, really, really long message..")
    ]
