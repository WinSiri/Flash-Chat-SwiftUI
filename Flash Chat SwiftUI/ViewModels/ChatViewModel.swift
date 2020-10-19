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
}
