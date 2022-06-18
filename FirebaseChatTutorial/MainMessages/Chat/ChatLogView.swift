//
//  ChatLogView.swift
//  FirebaseChatTutorial
//
//  Created by Oncu Ohancan on 18.06.2022.
//

import SwiftUI

struct ChatLogView: View {
    
    let chatUser: ChatUser?
    var body: some View {
        ScrollView {
            ForEach(0..<10) { num in
                Text("FAKE MESSAGE FOR NOW")
            }
        }.navigationTitle(chatUser?.email ?? "")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ChatLogView_Previews: PreviewProvider {
    static var previews: some View {
        ChatLogView(chatUser: nil)
    }
}
