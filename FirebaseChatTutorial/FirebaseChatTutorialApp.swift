//
//  FirebaseChatTutorialApp.swift
//  FirebaseChatTutorial
//
//  Created by Oncu Ohancan on 4.06.2022.
//

import SwiftUI

@main
struct FirebaseChatTutorialApp: App {
    var body: some Scene {
        WindowGroup {
            LoginView(didCompleteLoginProcess: {
                
            })
        }
    }
}
