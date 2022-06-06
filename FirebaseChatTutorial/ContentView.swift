//
//  ContentView.swift
//  FirebaseChatTutorial
//
//  Created by Oncu Ohancan on 4.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var isLoginMode = false
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 16) {
                Picker(selection: $isLoginMode, label:
                    Text("Picker here")) {
                    Text("Login")
                        .tag(true)
                    Text("Create Account")
                        .tag(false)
                }.pickerStyle(SegmentedPickerStyle())
                    .padding()
                    
                    if !isLoginMode {
                        Button {
                            
                        } label: {Image(systemName: "person.fill")
                            .font(.system(size: 64))
                            .padding()
                        }
                }
                
                    Group {
                        TextField("Email", text: $email)
                                .keyboardType(.emailAddress)
                                .autocapitalization(.none)
                        SecureField("Password", text: $password)
                    }
                    .padding(12)
                    .foregroundColor(.white)
                    
                Button {
                    
                } label: {
                    HStack {
                        Spacer()
                        Text(isLoginMode ? "Log In" : "Create Account")
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .font(.system(size: 14, weight: .semibold))
                        Spacer()
                    }.background(.blue)
                }
            }
                .padding()
                
            }
            .navigationTitle(isLoginMode ? "Login" : "Create Account")
            .background(Color(.init(white: 0,alpha: 0.05)))
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
