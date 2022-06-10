//
//  MainMessages.swift
//  FirebaseChatTutorial
//
//  Created by Oncu Ohancan on 10.06.2022.
//

import SwiftUI

struct MainMessagesView: View {
    var body: some View {
        NavigationView {
            
            VStack {
                HStack(spacing: 16) {
                    Image(systemName: "person.fill")
                        .font(.system(size: 34, weight: .heavy))
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("USERNAME")
                            .font(.system(size: 24, weight: .bold))
                        HStack {
                            Circle()
                                .foregroundColor(.green)
                                .frame(width: 14, height: 14)
                            Text("online")
                                .font(.system(size: 12))
                                .foregroundColor(Color(.lightGray))
                        }
                        
                    }
                    Spacer()
                    Image(systemName: "gear")
                }
                .padding()
                
            ScrollView {
                ForEach(0..<10, id: \.self) { num in
                    VStack {
                        HStack(spacing: 16) {
                        Image(systemName: "person.fill")
                            .font(.system(size: 32))
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 44)
                            .stroke(Color.black, lineWidth: 1)
                            )
                            
                        VStack(alignment: .leading) {
                            Text("Username")
                                .font(.system(size: 16, weight: .bold))
                            Text("Message send to user")
                                .font(.system(size: 14))
                            
                            
                        }
                        Text("22d")
                            .font(.system(size: 14, weight: .semibold))
                    }
                    Divider()
                    }.padding(.vertical, 8)
            }
                
                Button{
                    
                } label: {
                    HStack {
                    Spacer()
                    Text("+ New Message")
                            .font(.system(size: 16, weight: .bold))
                    Spacer()
                    }
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .background(.blue)
                        .cornerRadius(32)
                        .padding(.horizontal)
                }
                
//            .navigationTitle("Main Message View")
            } .navigationBarHidden(true)
            }
        }
    }
}

struct MainMessages_Previews: PreviewProvider {
    static var previews: some View {
        MainMessagesView()
    }
}
