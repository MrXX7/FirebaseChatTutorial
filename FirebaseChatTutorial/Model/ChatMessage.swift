//
//  ChatMessage.swift
//  FirebaseChatTutorial
//
//  Created by Oncu Ohancan on 20.06.2022.
//

import Foundation
import FirebaseFirestoreSwift

struct ChatMessage: Codable, Identifiable {
    @DocumentID var id: String?
    let fromId, toId, text: String
    let timestamp: Date
}
