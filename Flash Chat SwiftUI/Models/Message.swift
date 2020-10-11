//
//  Message.swift
//  Flash Chat SwiftUI
//
//  Created by Kwin Sirikwin on 11/10/20.
//

import Foundation

struct Message: Identifiable {
    var id = UUID()
    
    let sender: String
    let text: String
}

let messages: [Message] =
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
