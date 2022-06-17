//
//  CreateNewMessageView.swift
//  FirebaseChatTutorial
//
//  Created by Oncu Ohancan on 17.06.2022.
//

import SwiftUI

struct CreateNewMessageView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(0..<10) { num in
                    Text("New User")
                }
            }.navigationTitle("New Message")
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarLeading) {
                        Button{
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Text("Cancel")
                        }
                    }
                }
        }
    }
}

struct CreateNewMessageView_Previews: PreviewProvider {
    static var previews: some View {
//        CreateNewMessageView()
        MainMessagesView()
    }
}
