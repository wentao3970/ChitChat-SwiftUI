//
//  SignupView.swift
//  FlashChat
//
//  Created by Wentao Wu on 7/27/21.
//

import SwiftUI

struct SignupView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var email = ""
    @State private var password = ""
    @State private var username = ""
    
    var body: some View {
        VStack() {
            VStack(alignment: .leading, spacing: 12) {
                
                HStack{ Spacer() }
                
                Text("Get started.")
                        .font(.largeTitle)
                    .bold()
                Text("Create your account")
                    .foregroundColor(.blue)
                    .font(.largeTitle)
                    .bold()
            }
            .padding(.leading)
            
            
            VStack(spacing: 30){
                CustomeTextFied(placeholderText: "Email",
                                imageName: "envelope",
                                isSecureField: false,
                                text: $email)
                
                CustomeTextFied(placeholderText: "User name",
                                imageName: "person",
                                isSecureField: false,
                                text: $username)
                
                CustomeTextFied(placeholderText: "Password",
                                imageName: "lock",
                                isSecureField: true,
                                text: $password)
            }
            .padding([.top, .horizontal], 32)
            
            Button(action: {
                AuthViewModel.shared.register(withEmail: email, password: password, username: username)
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Sign Up")
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 320, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.blue)
                    .clipShape(Capsule())
                    .padding(.top, 24)
                
            })
            
            Spacer()
            
            Button(
                action: {
                    presentationMode.wrappedValue.dismiss()
                },
                label: {
                    HStack(alignment: .center) {
                        Text("Already have an account? ")
                            .font(.system(size: 14))
                        
                        Text("Sign In")
                            .font(.system(size: 14, weight: .bold))
                        
                    }
                })
                
        }
        .padding(.leading)
        .padding(.top)
        .navigationBarHidden(true)
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
